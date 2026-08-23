// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  final pulumi.Input<bool?>? elideUnknowns;

  /// Creates a new [ProviderArgs].
  /// [elideUnknowns] Optional.
  const ProviderArgs({
    this.elideUnknowns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elideUnknowns': ?elideUnknowns,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      elideUnknowns: (() { final guardedValue = map['elideUnknowns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
