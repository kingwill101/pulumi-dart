// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies current state of tabs.
class TabState {
  /// Current tab.
  final pulumi.Input<String>? currentTab;
  /// visited tabs.
  final pulumi.Input<List<String>>? visitedTabs;

  /// Creates a new [TabState].
  /// [currentTab] Current tab.
  /// [visitedTabs] visited tabs.
  const TabState({
    this.currentTab,
    this.visitedTabs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentTab': ?currentTab,
      'visitedTabs': ?visitedTabs,
    };
  }

  factory TabState.fromMap(Map<String, dynamic> map) {
    return TabState(
      currentTab: (() { final guardedValue = map['currentTab']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      visitedTabs: (() { final guardedValue = map['visitedTabs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

