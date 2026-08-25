// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WidgetConfigUiSettingsDataStoreUiConfigFacetField {
  /// The field name that end users will see.
  final pulumi.Input<String?>? displayName;
  /// Registered field name. The format is `field.abc`.
  final pulumi.Input<String> field;

  /// Creates a new [WidgetConfigUiSettingsDataStoreUiConfigFacetField].
  /// [displayName] The field name that end users will see.
  /// [field] Registered field name. The format is `field.abc`.
  const WidgetConfigUiSettingsDataStoreUiConfigFacetField({
    this.displayName,
    required this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'field': field,
    };
  }

  factory WidgetConfigUiSettingsDataStoreUiConfigFacetField.fromMap(Map<String, dynamic> map) {
    return WidgetConfigUiSettingsDataStoreUiConfigFacetField(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      field: pulumi.Input.fromValue(map['field'] as String),
    );
  }
}
