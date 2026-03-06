// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A widget that groups the other widgets. All widgets that are within the area spanned by the grouping widget are considered member widgets.
class CollapsibleGroup {
  /// The collapsed state of the widget on first page load.
  final pulumi.Input<bool>? collapsed;

  /// Creates a new [CollapsibleGroup].
  /// [collapsed] The collapsed state of the widget on first page load.
  const CollapsibleGroup({
    this.collapsed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collapsed': ?collapsed,
    };
  }

  factory CollapsibleGroup.fromMap(Map<String, dynamic> map) {
    return CollapsibleGroup(
      collapsed: (() { final guardedValue = map['collapsed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

