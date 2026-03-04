// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuestPoliciesRecipeInstallStepFileCopy {
  /// The id of the relevant artifact in the recipe.
  final pulumi.Input<String> artifactId;

  /// The absolute path on the instance to put the file.
  final pulumi.Input<String> destination;

  /// Whether to allow this step to overwrite existing files.If this is false and the file already exists the file
  /// is not overwritten and the step is considered a success. Defaults to false.
  final pulumi.Input<bool>? overwrite;

  /// Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users
  /// for the file (similarly to the numeric mode used in the linux chmod utility). Each digit represents a three bit
  /// number with the 4 bit corresponding to the read permissions, the 2 bit corresponds to the write bit, and the one
  /// bit corresponds to the execute permission. Default behavior is 755.
  /// Below are some examples of permissions and their associated values:
  /// read, write, and execute: 7 read and execute: 5 read and write: 6 read only: 4
  final pulumi.Input<String>? permissions;

  /// Creates a new [GuestPoliciesRecipeInstallStepFileCopy].
  /// [artifactId] The id of the relevant artifact in the recipe.
  /// [destination] The absolute path on the instance to put the file.
  /// [overwrite] Whether to allow this step to overwrite existing files.If this is false and the file already exists the file
  /// [permissions] Consists of three octal digits which represent, in order, the permissions of the owner, group, and other users
  GuestPoliciesRecipeInstallStepFileCopy({
    required this.artifactId,
    required this.destination,
    this.overwrite,
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': artifactId,
      'destination': destination,
      'overwrite': ?overwrite,
      'permissions': ?permissions,
    };
  }

  factory GuestPoliciesRecipeInstallStepFileCopy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GuestPoliciesRecipeInstallStepFileCopy(
      artifactId: pulumi.Input.fromValue(map['artifactId'] as String),
      destination: pulumi.Input.fromValue(map['destination'] as String),
      overwrite: (() {
        final guardedValue = map['overwrite'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      permissions: (() {
        final guardedValue = map['permissions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
