// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderFeaturesLogAnalyticsWorkspace {
  final pulumi.Input<bool>? permanentlyDeleteOnDestroy;

  /// Creates a new [ProviderFeaturesLogAnalyticsWorkspace].
  /// [permanentlyDeleteOnDestroy] Optional.
  ProviderFeaturesLogAnalyticsWorkspace({
    this.permanentlyDeleteOnDestroy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permanentlyDeleteOnDestroy': ?permanentlyDeleteOnDestroy,
    };
  }

  factory ProviderFeaturesLogAnalyticsWorkspace.fromMap(Map<String, dynamic> map) {
    return ProviderFeaturesLogAnalyticsWorkspace(
      permanentlyDeleteOnDestroy: (() { final guardedValue = map['permanentlyDeleteOnDestroy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

