// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuestPoliciesRecipeArtifactRemote {
  /// Must be provided if allowInsecure is false. SHA256 checksum in hex format, to compare to the checksum of the artifact.
  /// If the checksum is not empty and it doesn't match the artifact then the recipe installation fails before running any
  /// of the steps.
  final pulumi.Input<String?>? checkSum;
  /// URI from which to fetch the object. It should contain both the protocol and path following the format {protocol}://{location}.
  final pulumi.Input<String?>? uri;

  /// Creates a new [GuestPoliciesRecipeArtifactRemote].
  /// [checkSum] Must be provided if allowInsecure is false. SHA256 checksum in hex format, to compare to the checksum of the artifact.
  /// [uri] URI from which to fetch the object. It should contain both the protocol and path following the format {protocol}://{location}.
  const GuestPoliciesRecipeArtifactRemote({
    this.checkSum,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkSum': ?checkSum,
      'uri': ?uri,
    };
  }

  factory GuestPoliciesRecipeArtifactRemote.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesRecipeArtifactRemote(
      checkSum: (() { final guardedValue = map['checkSum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
