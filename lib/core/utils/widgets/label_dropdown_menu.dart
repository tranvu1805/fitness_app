import 'dart:collection';

import 'package:flutter/material.dart';

import '../../theme/colors.dart';

typedef MenuEntry = DropdownMenuEntry<AppMenuItem>;

class AppMenuItem {
  const AppMenuItem({required this.label, required this.value});

  final String label;
  final Object value;
}

class LabelDropdownMenu extends StatefulWidget {
  const LabelDropdownMenu({
    super.key,
    required this.entries,
    required this.label,
    required this.controller,
    this.isInitialSelection = true,
    this.padding,
    this.hintText,
    required this.onSelected,
  });

  final List<AppMenuItem> entries;
  final String label;
  final String? hintText;
  final TextEditingController controller;
  final EdgeInsets? padding;
  final bool isInitialSelection;
  final Function(AppMenuItem) onSelected;

  @override
  State<LabelDropdownMenu> createState() => _LabelDropdownMenuState();
}

class _LabelDropdownMenuState extends State<LabelDropdownMenu> {
  final TextEditingController colorController = TextEditingController();
  final TextEditingController iconController = TextEditingController();
  late final List<MenuEntry> entries;

  @override
  void initState() {
    super.initState();
    entries = UnmodifiableListView<MenuEntry>(
      widget.entries.map<MenuEntry>(
        (menuItem) => MenuEntry(
          value: menuItem,
          label: menuItem.label,
          style: ButtonStyle(
            side: WidgetStateProperty.all(
              const BorderSide(color: AppColors.grayThree, width: 0.5),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: textStyle.titleMedium?.copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 5),
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return DropdownMenu<AppMenuItem>(
              hintText: widget.hintText,
              width: constraints.maxWidth,
              controller: widget.controller,
              initialSelection:
                  widget.isInitialSelection ? widget.entries.first : null,
              requestFocusOnTap: false,
              menuStyle: MenuStyle(
                padding: const WidgetStatePropertyAll(EdgeInsets.zero),
                backgroundColor: WidgetStateProperty.all(AppColors.white),
                maximumSize: WidgetStatePropertyAll(
                  Size(constraints.maxWidth, 200),
                ),
                side: WidgetStateProperty.all(
                  const BorderSide(color: AppColors.grayThree, width: 0.5),
                ),
                elevation: WidgetStateProperty.all(8),
              ),
              inputDecorationTheme: InputDecorationTheme(
                isDense: true,
                isCollapsed: true,
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.grayThree, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: AppColors.white,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding: widget.padding,
              ),
              textStyle: textStyle.titleSmall,
              dropdownMenuEntries: entries,
              onSelected: (AppMenuItem? entry) {
                if (entry != null) {
                  widget.controller.text = entry.label;
                  widget.onSelected(entry);
                }
              },
            );
          },
        ),
      ],
    );
  }
}
