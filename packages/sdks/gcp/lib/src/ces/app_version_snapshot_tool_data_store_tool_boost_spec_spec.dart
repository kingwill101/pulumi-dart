// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_data_store_tool_boost_spec_spec_condition_boost_spec.dart';

class AppVersionSnapshotToolDataStoreToolBoostSpecSpec {
  /// (Output)
  /// A list of boosting specifications.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpec>>? conditionBoostSpecs;

  /// Creates a new [AppVersionSnapshotToolDataStoreToolBoostSpecSpec].
  /// [conditionBoostSpecs] (Output)
  const AppVersionSnapshotToolDataStoreToolBoostSpecSpec({
    this.conditionBoostSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionBoostSpecs': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpec>, List<Map<String, dynamic>>>(conditionBoostSpecs, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionSnapshotToolDataStoreToolBoostSpecSpec.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolDataStoreToolBoostSpecSpec(
      conditionBoostSpecs: (() { final guardedValue = map['conditionBoostSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpec>(guardedValue, (value) => AppVersionSnapshotToolDataStoreToolBoostSpecSpecConditionBoostSpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
