// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationOwner resources.
class ApplicationOwnerState {
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationId;
  /// The object ID of the owner to assign to the application, typically a user or service principal. Changing this forces a new resource to be created.
  final pulumi.Input<String>? ownerObjectId;

  /// Creates a new [ApplicationOwnerState].
  /// [applicationId] The resource ID of the application registration. Changing this forces a new resource to be created.
  /// [ownerObjectId] The object ID of the owner to assign to the application, typically a user or service principal. Changing this forces a new resource to be created.
  ApplicationOwnerState({
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? ownerObjectId,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      ownerObjectId = pulumi.Input.asOptionalInput<String>(ownerObjectId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'ownerObjectId': ?ownerObjectId,
    };
  }

  factory ApplicationOwnerState.fromMap(Map<String, dynamic> map) {
    return ApplicationOwnerState(
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      ownerObjectId: map['ownerObjectId'] == null ? null : pulumi.Output.create<String>(map['ownerObjectId'] as String),
    );
  }
}

