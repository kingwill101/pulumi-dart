// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_essentialcontacts_v1_get_contact_args_doc}
/// Arguments for getContact.
/// {@endtemplate}
/// {@macro pulumi_essentialcontacts_v1_get_contact_args_doc}
class GetContactArgs {
  final pulumi.Input<String> contactId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetContactArgs].
  /// [contactId] Required.
  /// [project] Optional.
  GetContactArgs({
    required this.contactId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactId': contactId,
      'project': ?project,
    };
  }

  factory GetContactArgs.fromMap(Map<String, dynamic> map) {
    return GetContactArgs(
      contactId: (map['contactId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

