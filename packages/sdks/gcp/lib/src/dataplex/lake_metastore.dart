// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LakeMetastore {
  /// Optional. A relative reference to the Dataproc Metastore (https://cloud.google.com/dataproc-metastore/docs) service associated with the lake: `projects/{project_id}/locations/{location_id}/services/{service_id}`
  final pulumi.Input<String>? service;

  /// Creates a new [LakeMetastore].
  /// [service] Optional. A relative reference to the Dataproc Metastore (https://cloud.google.com/dataproc-metastore/docs) service associated with the lake: `projects/{project_id}/locations/{location_id}/services/{service_id}`
  LakeMetastore({
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'service': ?service,
    };
  }

  factory LakeMetastore.fromMap(Map<String, dynamic> map) {
    return LakeMetastore(
      service: map['service'] == null ? null : (map['service'] as String).input(),
    );
  }
}

