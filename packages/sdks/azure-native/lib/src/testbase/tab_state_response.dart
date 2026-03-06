// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies current state of tabs.
class TabStateResponse {
  /// Current tab.
  final pulumi.Input<String>? currentTab;
  /// visited tabs.
  final pulumi.Input<List<String>>? visitedTabs;

  /// Creates a new [TabStateResponse].
  /// [currentTab] Current tab.
  /// [visitedTabs] visited tabs.
  const TabStateResponse({
    this.currentTab,
    this.visitedTabs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentTab': ?currentTab,
      'visitedTabs': ?visitedTabs,
    };
  }

  factory TabStateResponse.fromMap(Map<String, dynamic> map) {
    return TabStateResponse(
      currentTab: (() { final guardedValue = map['currentTab']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      visitedTabs: (() { final guardedValue = map['visitedTabs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

