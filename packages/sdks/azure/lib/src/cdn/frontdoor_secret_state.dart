// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_secret_secret.dart';

/// Input properties used for looking up and filtering FrontdoorSecret resources.
class FrontdoorSecretState {
  /// The Resource ID of the Front Door Profile. Changing this forces a new Front Door Secret to be created.
  final pulumi.Input<String>? cdnFrontdoorProfileId;
  /// The name of the Front Door Profile containing this Front Door Secret.
  final pulumi.Input<String>? cdnFrontdoorProfileName;
  /// The name which should be used for this Front Door Secret. Possible values must start with a letter or a number, only contain letters, numbers and hyphens and have a length of between 2 and 260 characters. Changing this forces a new Front Door Secret to be created.
  final pulumi.Input<String>? name;
  /// A `secret` block as defined below. Changing this forces a new Front Door Secret to be created.
  final pulumi.Input<FrontdoorSecretSecret>? secret;

  /// Creates a new [FrontdoorSecretState].
  /// [cdnFrontdoorProfileId] The Resource ID of the Front Door Profile. Changing this forces a new Front Door Secret to be created.
  /// [cdnFrontdoorProfileName] The name of the Front Door Profile containing this Front Door Secret.
  /// [name] The name which should be used for this Front Door Secret. Possible values must start with a letter or a number, only contain letters, numbers and hyphens and have a length of between 2 and 260 characters. Changing this forces a new Front Door Secret to be created.
  /// [secret] A `secret` block as defined below. Changing this forces a new Front Door Secret to be created.
  FrontdoorSecretState({
    pulumi.Output<String>? cdnFrontdoorProfileId,
    pulumi.Output<String>? cdnFrontdoorProfileName,
    pulumi.Output<String>? name,
    pulumi.Output<FrontdoorSecretSecret>? secret,
  }) :
      cdnFrontdoorProfileId = pulumi.Input.asOptionalInput<String>(cdnFrontdoorProfileId),
      cdnFrontdoorProfileName = pulumi.Input.asOptionalInput<String>(cdnFrontdoorProfileName),
      name = pulumi.Input.asOptionalInput<String>(name),
      secret = pulumi.Input.asOptionalInput<FrontdoorSecretSecret>(secret);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': ?cdnFrontdoorProfileId,
      'cdnFrontdoorProfileName': ?cdnFrontdoorProfileName,
      'name': ?name,
      'secret': ?pulumi.Input.mapOptionalInputValue<FrontdoorSecretSecret, Map<String, dynamic>>(secret, (value) => value.toMap()),
    };
  }

  factory FrontdoorSecretState.fromMap(Map<String, dynamic> map) {
    return FrontdoorSecretState(
      cdnFrontdoorProfileId: map['cdnFrontdoorProfileId'] == null ? null : pulumi.Output.create<String>(map['cdnFrontdoorProfileId'] as String),
      cdnFrontdoorProfileName: map['cdnFrontdoorProfileName'] == null ? null : pulumi.Output.create<String>(map['cdnFrontdoorProfileName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      secret: map['secret'] == null ? null : pulumi.Output.create<FrontdoorSecretSecret>(FrontdoorSecretSecret.fromMap((map['secret'] as Map).cast<String, dynamic>())),
    );
  }
}

