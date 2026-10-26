// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_firestore_admin_v1beta1_index_field_response.dart';

/// Result data returned by getIndex.
class GetIndexFirestoreV1beta1Result {
  /// The collection ID to which this index applies. Required.
  final String? collectionId;
  /// The fields to index.
  final List<GoogleFirestoreAdminV1beta1IndexFieldResponse>? fields;
  /// The resource name of the index. Output only.
  final String? name;
  /// The state of the index. Output only.
  final String? state;

  /// Creates a new [GetIndexFirestoreV1beta1Result].
  /// [collectionId] The collection ID to which this index applies. Required.
  /// [fields] The fields to index.
  /// [name] The resource name of the index. Output only.
  /// [state] The state of the index. Output only.
  const GetIndexFirestoreV1beta1Result({
    this.collectionId,
    this.fields,
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': ?collectionId,
      'fields': ?(() { final guardedValue = fields; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleFirestoreAdminV1beta1IndexFieldResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'state': ?state,
    };
  }

  factory GetIndexFirestoreV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetIndexFirestoreV1beta1Result(
      collectionId: (() { final guardedValue = map['collectionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleFirestoreAdminV1beta1IndexFieldResponse>(guardedValue, (value) => GoogleFirestoreAdminV1beta1IndexFieldResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
