// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_site_identifiers_assigned_to_host_name_args_doc}
/// Arguments for listSiteIdentifiersAssignedToHostName.
/// {@endtemplate}
/// {@macro pulumi_web_list_site_identifiers_assigned_to_host_name_args_doc}
class ListSiteIdentifiersAssignedToHostNameArgs {
  /// Name of the object.
  final pulumi.Input<String>? name;

  /// Creates a new [ListSiteIdentifiersAssignedToHostNameArgs].
  /// [name] Name of the object.
  ListSiteIdentifiersAssignedToHostNameArgs({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ListSiteIdentifiersAssignedToHostNameArgs.fromMap(Map<String, dynamic> map) {
    return ListSiteIdentifiersAssignedToHostNameArgs(
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

