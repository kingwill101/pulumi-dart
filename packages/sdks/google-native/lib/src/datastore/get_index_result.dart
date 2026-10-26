// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_datastore_admin_v1_indexed_property_response.dart';

/// Result data returned by getIndex.
class GetIndexResult {
  /// The index's ancestor mode. Must not be ANCESTOR_MODE_UNSPECIFIED.
  final String? ancestor;
  /// The resource ID of the index.
  final String? indexId;
  /// The entity kind to which this index applies.
  final String? kind;
  /// Project ID.
  final String? project;
  /// An ordered sequence of property names and their index attributes. Requires: * A maximum of 100 properties.
  final List<GoogleDatastoreAdminV1IndexedPropertyResponse>? properties;
  /// The state of the index.
  final String? state;

  /// Creates a new [GetIndexResult].
  /// [ancestor] The index's ancestor mode. Must not be ANCESTOR_MODE_UNSPECIFIED.
  /// [indexId] The resource ID of the index.
  /// [kind] The entity kind to which this index applies.
  /// [project] Project ID.
  /// [properties] An ordered sequence of property names and their index attributes. Requires: * A maximum of 100 properties.
  /// [state] The state of the index.
  const GetIndexResult({
    this.ancestor,
    this.indexId,
    this.kind,
    this.project,
    this.properties,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ancestor': ?ancestor,
      'indexId': ?indexId,
      'kind': ?kind,
      'project': ?project,
      'properties': ?(() { final guardedValue = properties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleDatastoreAdminV1IndexedPropertyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'state': ?state,
    };
  }

  factory GetIndexResult.fromMap(Map<String, dynamic> map) {
    return GetIndexResult(
      ancestor: (() { final guardedValue = map['ancestor']; if (guardedValue == null) return null; return guardedValue as String; })(),
      indexId: (() { final guardedValue = map['indexId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleDatastoreAdminV1IndexedPropertyResponse>(guardedValue, (value) => GoogleDatastoreAdminV1IndexedPropertyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
