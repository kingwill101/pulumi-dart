// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsearch_v1_get_search_application_args_doc}
/// Arguments for getSearchApplication.
/// {@endtemplate}
/// {@macro pulumi_cloudsearch_v1_get_search_application_args_doc}
class GetSearchApplicationArgs {
  final pulumi.Input<bool>? debugOptionsEnableDebugging;
  final pulumi.Input<String> searchapplicationId;

  /// Creates a new [GetSearchApplicationArgs].
  /// [debugOptionsEnableDebugging] Optional.
  /// [searchapplicationId] Required.
  GetSearchApplicationArgs({
    this.debugOptionsEnableDebugging,
    required this.searchapplicationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'debugOptionsEnableDebugging': ?debugOptionsEnableDebugging,
      'searchapplicationId': searchapplicationId,
    };
  }

  factory GetSearchApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetSearchApplicationArgs(
      debugOptionsEnableDebugging: (() { final guardedValue = map['debugOptionsEnableDebugging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      searchapplicationId: pulumi.Input.fromValue(map['searchapplicationId'] as String),
    );
  }
}

