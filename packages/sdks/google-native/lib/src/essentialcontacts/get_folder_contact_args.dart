// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_essentialcontacts_v1_get_folder_contact_args_doc}
/// Arguments for getFolderContact.
/// {@endtemplate}
/// {@macro pulumi_essentialcontacts_v1_get_folder_contact_args_doc}
class GetFolderContactArgs {
  final pulumi.Input<String> contactId;
  final pulumi.Input<String> folderId;

  /// Creates a new [GetFolderContactArgs].
  /// [contactId] Required.
  /// [folderId] Required.
  GetFolderContactArgs({
    required this.contactId,
    required this.folderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactId': contactId,
      'folderId': folderId,
    };
  }

  factory GetFolderContactArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderContactArgs(
      contactId: (map['contactId'] as String).input(),
      folderId: (map['folderId'] as String).input(),
    );
  }
}

