// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeaturesLogAnalyticsWorkspace {
  final pulumi.Input<bool?>? permanentlyDeleteOnDestroy;

  /// Creates a new [FeaturesLogAnalyticsWorkspace].
  /// [permanentlyDeleteOnDestroy] Optional.
  const FeaturesLogAnalyticsWorkspace({
    this.permanentlyDeleteOnDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permanentlyDeleteOnDestroy': ?permanentlyDeleteOnDestroy,
    };
  }

  factory FeaturesLogAnalyticsWorkspace.fromMap(Map<String, dynamic> map) {
    return FeaturesLogAnalyticsWorkspace(
      permanentlyDeleteOnDestroy: (() { final guardedValue = map['permanentlyDeleteOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
