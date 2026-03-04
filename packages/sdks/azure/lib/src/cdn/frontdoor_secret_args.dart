// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_secret_secret.dart';

/// {@template pulumi_cdn_frontdoor_secret_frontdoor_secret_args_doc}
/// The set of arguments for FrontdoorSecret.
/// {@endtemplate}
/// {@macro pulumi_cdn_frontdoor_secret_frontdoor_secret_args_doc}
class FrontdoorSecretArgs {
  /// The Resource ID of the Front Door Profile. Changing this forces a new Front Door Secret to be created.
  final pulumi.Input<String> cdnFrontdoorProfileId;

  /// The name which should be used for this Front Door Secret. Possible values must start with a letter or a number, only contain letters, numbers and hyphens and have a length of between 2 and 260 characters. Changing this forces a new Front Door Secret to be created.
  final pulumi.Input<String>? name;

  /// A `secret` block as defined below. Changing this forces a new Front Door Secret to be created.
  final pulumi.Input<FrontdoorSecretSecret> secret;

  /// Creates a new [FrontdoorSecretArgs].
  /// [cdnFrontdoorProfileId] The Resource ID of the Front Door Profile. Changing this forces a new Front Door Secret to be created.
  /// [name] The name which should be used for this Front Door Secret. Possible values must start with a letter or a number, only contain letters, numbers and hyphens and have a length of between 2 and 260 characters. Changing this forces a new Front Door Secret to be created.
  /// [secret] A `secret` block as defined below. Changing this forces a new Front Door Secret to be created.
  FrontdoorSecretArgs({
    required this.cdnFrontdoorProfileId,
    this.name,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': cdnFrontdoorProfileId,
      'name': ?name,
      'secret':
          pulumi.Input.mapInputValue<
            FrontdoorSecretSecret,
            Map<String, dynamic>
          >(secret, (value) => value.toMap()),
    };
  }

  factory FrontdoorSecretArgs.fromMap(Map<String, dynamic> map) {
    return FrontdoorSecretArgs(
      cdnFrontdoorProfileId: pulumi.Input.fromValue(
        map['cdnFrontdoorProfileId'] as String,
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secret: pulumi.Input.fromValue(
        FrontdoorSecretSecret.fromMap(
          (map['secret']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
