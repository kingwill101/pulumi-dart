// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_serviceaccount_get_s_get_sargs_doc}
/// Arguments for getS.
/// {@endtemplate}
/// {@macro pulumi_serviceaccount_get_s_get_sargs_doc}
class GetSArgs {
  /// A prefix for filtering. It's applied with the `account_id`.
  final pulumi.Input<String>? prefix;

  /// The ID of the project. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A regular expression for filtering. It's applied with the `email`. Further information about the syntax can be found [here](https://github.com/google/re2/wiki/Syntax).
  final pulumi.Input<String>? regex;

  /// Creates a new [GetSArgs].
  /// [prefix] A prefix for filtering. It's applied with the `account_id`.
  /// [project] The ID of the project. If it is not provided, the provider project is used.
  /// [regex] A regular expression for filtering. It's applied with the `email`. Further information about the syntax can be found [here](https://github.com/google/re2/wiki/Syntax).
  GetSArgs({this.prefix, this.project, this.regex});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': ?prefix,
      'project': ?project,
      'regex': ?regex,
    };
  }

  factory GetSArgs.fromMap(Map<String, dynamic> map) {
    return GetSArgs(
      prefix: (() {
        final guardedValue = map['prefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regex: (() {
        final guardedValue = map['regex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
