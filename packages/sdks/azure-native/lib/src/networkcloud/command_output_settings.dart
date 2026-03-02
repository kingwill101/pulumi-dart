// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_selector.dart';

class CommandOutputSettings {
  /// The selection of the managed identity to use with this storage account container. The identity type must be either system assigned or user assigned.
  final pulumi.Input<IdentitySelector>? associatedIdentity;
  /// The URL of the storage account container that is to be used by the specified identities.
  final pulumi.Input<String>? containerUrl;

  /// Creates a new [CommandOutputSettings].
  /// [associatedIdentity] The selection of the managed identity to use with this storage account container. The identity type must be either system assigned or user assigned.
  /// [containerUrl] The URL of the storage account container that is to be used by the specified identities.
  CommandOutputSettings({
    this.associatedIdentity,
    this.containerUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedIdentity': ?pulumi.Input.mapOptionalInputValue<IdentitySelector, Map<String, dynamic>>(associatedIdentity, (value) => value.toMap()),
      'containerUrl': ?containerUrl,
    };
  }

  factory CommandOutputSettings.fromMap(Map<String, dynamic> map) {
    return CommandOutputSettings(
      associatedIdentity: map['associatedIdentity'] == null ? null : (IdentitySelector.fromMap((map['associatedIdentity'] as Map).cast<String, dynamic>())).input(),
      containerUrl: map['containerUrl'] == null ? null : (map['containerUrl'] as String).input(),
    );
  }
}

