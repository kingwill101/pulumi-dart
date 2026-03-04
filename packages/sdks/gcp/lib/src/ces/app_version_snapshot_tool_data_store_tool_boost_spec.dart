// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_data_store_tool_boost_spec_spec.dart';

class AppVersionSnapshotToolDataStoreToolBoostSpec {
  /// (Output)
  /// The Data Store where the boosting configuration is applied. Full resource
  /// name of DataStore, such as
  /// projects/{project}/locations/{location}/collections/{collection}/dataStores/{dataStore}.
  final pulumi.Input<List<String>>? dataStores;

  /// (Output)
  /// A list of boosting specifications.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolDataStoreToolBoostSpecSpec>>?
  specs;

  /// Creates a new [AppVersionSnapshotToolDataStoreToolBoostSpec].
  /// [dataStores] (Output)
  /// [specs] (Output)
  AppVersionSnapshotToolDataStoreToolBoostSpec({this.dataStores, this.specs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStores': ?dataStores,
      'specs':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppVersionSnapshotToolDataStoreToolBoostSpecSpec>,
            List<Map<String, dynamic>>
          >(
            specs,
            (value) =>
                pulumi.Input.encodeList<
                  AppVersionSnapshotToolDataStoreToolBoostSpecSpec,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory AppVersionSnapshotToolDataStoreToolBoostSpec.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotToolDataStoreToolBoostSpec(
      dataStores: (() {
        final guardedValue = map['dataStores'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      specs: (() {
        final guardedValue = map['specs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AppVersionSnapshotToolDataStoreToolBoostSpecSpec
          >(
            guardedValue,
            (value) => AppVersionSnapshotToolDataStoreToolBoostSpecSpec.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
