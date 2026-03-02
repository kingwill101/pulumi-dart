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
  GetSResult({
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
      accounts: pulumi.Input.decodeList<GetSAccount>(map['accounts'], (value) => GetSAccount.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      prefix: map['prefix'] == null ? null : map['prefix']! as String,
      project: map['project'] == null ? null : map['project']! as String,
      regex: map['regex'] == null ? null : map['regex']! as String,
    );
  }
}

