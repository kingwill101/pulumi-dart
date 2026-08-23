// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_application_owner_application_owner_args_doc}
/// The set of arguments for ApplicationOwner.
/// {@endtemplate}
/// {@macro pulumi_index_application_owner_application_owner_args_doc}
class ApplicationOwnerArgs {
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationId;
  /// The object ID of the owner to assign to the application, typically a user or service principal. Changing this forces a new resource to be created.
  final pulumi.Input<String> ownerObjectId;

  /// Creates a new [ApplicationOwnerArgs].
  /// [applicationId] The resource ID of the application registration. Changing this forces a new resource to be created.
  /// [ownerObjectId] The object ID of the owner to assign to the application, typically a user or service principal. Changing this forces a new resource to be created.
  const ApplicationOwnerArgs({
    required this.applicationId,
    required this.ownerObjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'ownerObjectId': ownerObjectId,
    };
  }

  factory ApplicationOwnerArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationOwnerArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      ownerObjectId: pulumi.Input.fromValue(map['ownerObjectId'] as String),
    );
  }
}
