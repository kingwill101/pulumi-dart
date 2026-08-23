// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_idna_idna_args_doc}
/// Arguments for idna.
/// {@endtemplate}
/// {@macro pulumi_index_idna_idna_args_doc}
class IdnaArgs {
  /// Domain to convert.
  final pulumi.Input<String> domain;

  /// Creates a new [IdnaArgs].
  /// [domain] Domain to convert.
  const IdnaArgs({
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
    };
  }

  factory IdnaArgs.fromMap(Map<String, dynamic> map) {
    return IdnaArgs(
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
