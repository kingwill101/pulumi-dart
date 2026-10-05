// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_encryption_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_metadata_store_metadata_store_state_response.dart';

/// Result data returned by getMetadataStore.
class GetMetadataStoreAiplatformV1beta1Result {
  /// Timestamp when this MetadataStore was created.
  final String? createTime;
  /// Description of the MetadataStore.
  final String? description;
  /// Customer-managed encryption key spec for a Metadata Store. If set, this Metadata Store and all sub-resources of this Metadata Store are secured using this key.
  final GoogleCloudAiplatformV1beta1EncryptionSpecResponse? encryptionSpec;
  /// The resource name of the MetadataStore instance.
  final String? name;
  /// State information of the MetadataStore.
  final GoogleCloudAiplatformV1beta1MetadataStoreMetadataStoreStateResponse? state;
  /// Timestamp when this MetadataStore was last updated.
  final String? updateTime;

  /// Creates a new [GetMetadataStoreAiplatformV1beta1Result].
  /// [createTime] Timestamp when this MetadataStore was created.
  /// [description] Description of the MetadataStore.
  /// [encryptionSpec] Customer-managed encryption key spec for a Metadata Store. If set, this Metadata Store and all sub-resources of this Metadata Store are secured using this key.
  /// [name] The resource name of the MetadataStore instance.
  /// [state] State information of the MetadataStore.
  /// [updateTime] Timestamp when this MetadataStore was last updated.
  const GetMetadataStoreAiplatformV1beta1Result({
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

  factory GetMetadataStoreAiplatformV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetMetadataStoreAiplatformV1beta1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1EncryptionSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return GoogleCloudAiplatformV1beta1MetadataStoreMetadataStoreStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
