// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_org_template_collection_args_doc}
/// The set of arguments for OrgTemplateCollection.
/// {@endtemplate}
/// {@macro pulumi_api_org_template_collection_args_doc}
class OrgTemplateCollectionArgs {
  /// deprecated - use DestinationURL instead
  final pulumi.Input<dynamic>? destination;
  /// The destination URL for the template source.
  final pulumi.Input<String>? destinationURL;
  /// The name of the template source.
  final pulumi.Input<String> name;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The source URL to fetch templates from.
  final pulumi.Input<String> sourceURL;

  /// Creates a new [OrgTemplateCollectionArgs].
  /// [destination] deprecated - use DestinationURL instead
  /// [destinationURL] The destination URL for the template source.
  /// [name] The name of the template source.
  /// [orgName] The organization name
  /// [sourceURL] The source URL to fetch templates from.
  const OrgTemplateCollectionArgs({
    this.destination,
    this.destinationURL,
    required this.name,
    required this.orgName,
    required this.sourceURL,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'destinationURL': ?destinationURL,
      'name': name,
      'orgName': orgName,
      'sourceURL': sourceURL,
    };
  }

  factory OrgTemplateCollectionArgs.fromMap(Map<String, dynamic> map) {
    return OrgTemplateCollectionArgs(
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      destinationURL: (() { final guardedValue = map['destinationURL']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      sourceURL: pulumi.Input.fromValue(map['sourceURL'] as String),
    );
  }
}
