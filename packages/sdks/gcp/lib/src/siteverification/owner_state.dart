// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Owner resources.
class OwnerState {
  /// The email of the user to be added as an owner.
  ///
  /// - - -
  final pulumi.Input<String>? email;
  /// The id of of the web resource to which the owner will be added, in the form `webResource/<resource_id>`,
  /// such as `webResource/https://www.example.com/`
  final pulumi.Input<String>? webResourceId;

  /// Creates a new [OwnerState].
  /// [email] The email of the user to be added as an owner.
  /// [webResourceId] The id of of the web resource to which the owner will be added, in the form `webResource/<resource_id>`,
  OwnerState({
    this.email,
    this.webResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'webResourceId': ?webResourceId,
    };
  }

  factory OwnerState.fromMap(Map<String, dynamic> map) {
    return OwnerState(
      email: map['email'] == null ? null : (map['email'] as String).input(),
      webResourceId: map['webResourceId'] == null ? null : (map['webResourceId'] as String).input(),
    );
  }
}

