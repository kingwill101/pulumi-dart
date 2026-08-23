// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_saccount.dart';

/// Result data returned by getS.
class GetSResult {
  /// A list of all retrieved service accounts. Structure is defined below.
  final List<GetSAccount> accounts;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? prefix;
  final String? project;
  final String? regex;

  /// Creates a new [GetSResult].
  /// [accounts] A list of all retrieved service accounts. Structure is defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [prefix] Optional.
  /// [project] Optional.
  /// [regex] Optional.
  const GetSResult({
    required this.accounts,
    required this.id,
    this.prefix,
    this.project,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': pulumi.Input.encodeList<GetSAccount, Map<String, dynamic>>(accounts, (value) => value.toMap()),
      'id': id,
      'prefix': ?prefix,
      'project': ?project,
      'regex': ?regex,
    };
  }

  factory GetSResult.fromMap(Map<String, dynamic> map) {
    return GetSResult(
      accounts: pulumi.Input.decodeList<GetSAccount>(map['accounts']!, (value) => GetSAccount.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
