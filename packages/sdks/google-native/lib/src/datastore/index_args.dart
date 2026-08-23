// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_datastore_admin_v1_indexed_property.dart';
import 'index_ancestor.dart';

/// {@template pulumi_datastore_v1_index_args_doc}
/// The set of arguments for Index.
/// {@endtemplate}
/// {@macro pulumi_datastore_v1_index_args_doc}
class IndexArgs {
  /// The index's ancestor mode. Must not be ANCESTOR_MODE_UNSPECIFIED.
  final pulumi.Input<IndexAncestor> ancestor;
  /// The entity kind to which this index applies.
  final pulumi.Input<String> kind;
  final pulumi.Input<String>? project;
  /// An ordered sequence of property names and their index attributes. Requires: * A maximum of 100 properties.
  final pulumi.Input<List<GoogleDatastoreAdminV1IndexedProperty>> properties;

  /// Creates a new [IndexArgs].
  /// [ancestor] The index's ancestor mode. Must not be ANCESTOR_MODE_UNSPECIFIED.
  /// [kind] The entity kind to which this index applies.
  /// [project] Optional.
  /// [properties] An ordered sequence of property names and their index attributes. Requires: * A maximum of 100 properties.
  const IndexArgs({
    required this.ancestor,
    required this.kind,
    this.project,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ancestor': pulumi.Input.mapInputValue<IndexAncestor, String>(ancestor, (value) => value.wireValue),
      'kind': kind,
      'project': ?project,
      'properties': pulumi.Input.mapInputValue<List<GoogleDatastoreAdminV1IndexedProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<GoogleDatastoreAdminV1IndexedProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IndexArgs.fromMap(Map<String, dynamic> map) {
    return IndexArgs(
      ancestor: pulumi.Input.fromValue(IndexAncestor.fromValue(map['ancestor']! as String)),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleDatastoreAdminV1IndexedProperty>(map['properties']!, (value) => GoogleDatastoreAdminV1IndexedProperty.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
