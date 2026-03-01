// ignore_for_file: unused_element, unnecessary_cast


/// Specifies current state of tabs.
class TabState {
  /// Current tab.
  final String? currentTab;
  /// visited tabs.
  final List<String>? visitedTabs;

  /// Creates a new [TabState].
  /// [currentTab] Current tab.
  /// [visitedTabs] visited tabs.
  TabState({
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
      currentTab: map['currentTab'] == null ? null : map['currentTab'] as String,
      visitedTabs: map['visitedTabs'] == null ? null : (map['visitedTabs'] as List).cast<String>(),
    );
  }
}

