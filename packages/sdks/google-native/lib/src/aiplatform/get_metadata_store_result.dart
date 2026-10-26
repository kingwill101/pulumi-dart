// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1_metadata_store_metadata_store_state_response.dart';

/// Result data returned by getMetadataStore.
class GetMetadataStoreResult {
  /// Timestamp when this MetadataStore was created.
  final String? createTime;
  /// Description of the MetadataStore.
  final String? description;
  /// Customer-managed encryption key spec for a Metadata Store. If set, this Metadata Store and all sub-resources of this Metadata Store are secured using this key.
  final GoogleCloudAiplatformV1EncryptionSpecResponse? encryptionSpec;
  /// The resource name of the MetadataStore instance.
  final String? name;
  /// State information of the MetadataStore.
  final GoogleCloudAiplatformV1MetadataStoreMetadataStoreStateResponse? state;
  /// Timestamp when this MetadataStore was last updated.
  final String? updateTime;

  /// Creates a new [GetMetadataStoreResult].
  /// [createTime] Timestamp when this MetadataStore was created.
  /// [description] Description of the MetadataStore.
  /// [encryptionSpec] Customer-managed encryption key spec for a Metadata Store. If set, this Metadata Store and all sub-resources of this Metadata Store are secured using this key.
  /// [name] The resource name of the MetadataStore instance.
  /// [state] State information of the MetadataStore.
  /// [updateTime] Timestamp when this MetadataStore was last updated.
  const GetMetadataStoreResult({
    this.createTime,
    this.description,
    this.encryptionSpec,
    this.name,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'encryptionSpec': ?encryptionSpec?.toMap(),
      'name': ?name,
      'state': ?state?.toMap(),
      'updateTime': ?updateTime,
    };
  }

  factory GetMetadataStoreResult.fromMap(Map<String, dynamic> map) {
    return GetMetadataStoreResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1EncryptionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1MetadataStoreMetadataStoreStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
