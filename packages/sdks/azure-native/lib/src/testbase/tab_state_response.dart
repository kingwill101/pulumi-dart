// ignore_for_file: unused_element, unnecessary_cast


/// Specifies current state of tabs.
class TabStateResponse {
  /// Current tab.
  final String? currentTab;
  /// visited tabs.
  final List<String>? visitedTabs;

  /// Creates a new [TabStateResponse].
  /// [currentTab] Current tab.
  /// [visitedTabs] visited tabs.
  TabStateResponse({
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
      currentTab: map['currentTab'] == null ? null : map['currentTab'] as String,
      visitedTabs: map['visitedTabs'] == null ? null : (map['visitedTabs'] as List).cast<String>(),
    );
  }
}

