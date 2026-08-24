// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_identity_args_doc}
/// Arguments for identity.
/// {@endtemplate}
/// {@macro pulumi_providers_identity_args_doc}
class IdentityArgs {
  final pulumi.Input<pulumi.ProviderResource> self;

  /// Creates a new [IdentityArgs].
  /// [self] Required.
  const IdentityArgs({
    required this.self,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '__self__': self,
    };
  }

  factory IdentityArgs.fromMap(Map<String, dynamic> map) {
    return IdentityArgs(
      self: pulumi.Input.fromValue(map['__self__'] as pulumi.ProviderResource),
    );
  }
}
