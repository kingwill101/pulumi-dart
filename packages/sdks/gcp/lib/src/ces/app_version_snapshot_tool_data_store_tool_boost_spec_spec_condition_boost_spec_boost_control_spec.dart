// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_data_store_tool_boost_spec_spec_condition_boost_spec_boost_control_spec_control_point.dart';

class AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpec {
  /// (Output)
  /// The attribute type to be used to determine the boost amount. The
  /// attribute value can be derived from the field value of the specified
  /// field_name. In the case of numerical it is straightforward i.e.
  /// attribute_value = numerical_field_value. In the case of freshness
  /// however, attribute_value = (time.now() - datetime_field_value).
  /// Possible values:
  /// NUMERICAL
  /// FRESHNESS
  final pulumi.Input<String>? attributeType;
  /// (Output)
  /// The control points used to define the curve. The monotonic function
  /// (defined through the interpolation_type above) passes through the
  /// control points listed here.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint>>? controlPoints;
  /// (Output)
  /// The name of the field whose value will be used to determine the
  /// boost amount.
  final pulumi.Input<String>? fieldName;
  /// (Output)
  /// The interpolation type to be applied to connect the control points
  /// listed below.
  /// Possible values:
  /// LINEAR
  final pulumi.Input<String>? interpolationType;

  /// Creates a new [AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpec].
  /// [attributeType] (Output)
  /// [controlPoints] (Output)
  /// [fieldName] (Output)
  /// [interpolationType] (Output)
  AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpec({
    this.attributeType,
    this.controlPoints,
    this.fieldName,
    this.interpolationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeType': ?attributeType,
      'controlPoints': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint>, List<Map<String, dynamic>>>(controlPoints, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fieldName': ?fieldName,
      'interpolationType': ?interpolationType,
    };
  }

  factory AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpec.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpec(
      attributeType: map['attributeType'] == null ? null : (map['attributeType'] as String).input(),
      controlPoints: map['controlPoints'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint>(map['controlPoints'], (value) => AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpecBoostControlSpecControlPoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fieldName: map['fieldName'] == null ? null : (map['fieldName'] as String).input(),
      interpolationType: map['interpolationType'] == null ? null : (map['interpolationType'] as String).input(),
    );
  }
}

