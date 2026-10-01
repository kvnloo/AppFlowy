import 'package:appflowy/plugins/document/presentation/editor_plugins/shortcuts/command_shortcuts.dart';
import 'package:appflowy/plugins/document/presentation/editor_plugins/toggle/toggle_block_shortcuts.dart';
import 'package:appflowy_editor/appflowy_editor.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('keeps both todo and toggle-list Ctrl/Cmd+Enter handlers', () {
    expect(commandShortcutEvents, contains(toggleToggleListCommand));
    expect(commandShortcutEvents, contains(toggleTodoListCommand));

    final toggleIndex = commandShortcutEvents.indexOf(toggleToggleListCommand);
    final todoIndex = commandShortcutEvents.indexOf(toggleTodoListCommand);

    expect(toggleIndex, greaterThanOrEqualTo(0));
    expect(todoIndex, greaterThan(toggleIndex));
  });
}
