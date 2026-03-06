// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_job_storage_account_job_storage_account_args_doc}
/// The set of arguments for JobStorageAccount.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_job_storage_account_job_storage_account_args_doc}
class JobStorageAccountArgs {
  /// The authentication mode for the Stream Analytics Job's Storage Account. Possible values are `ConnectionString`, and `Msi`.
  final pulumi.Input<String> authenticationMode;
  final pulumi.Input<String>? storageAccountKey;
  final pulumi.Input<String> storageAccountName;
  /// The ID of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String> streamAnalyticsJobId;

  /// Creates a new [JobStorageAccountArgs].
  /// [authenticationMode] The authentication mode for the Stream Analytics Job's Storage Account. Possible values are `ConnectionString`, and `Msi`.
  /// [storageAccountKey] Optional.
  /// [storageAccountName] Required.
  /// [streamAnalyticsJobId] The ID of the Stream Analytics Job. Changing this forces a new resource to be created.
  const JobStorageAccountArgs({
    required this.authenticationMode,
    this.storageAccountKey,
    required this.storageAccountName,
    required this.streamAnalyticsJobId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': authenticationMode,
      'storageAccountKey': ?storageAccountKey,
      'storageAccountName': storageAccountName,
      'streamAnalyticsJobId': streamAnalyticsJobId,
    };
  }

  factory JobStorageAccountArgs.fromMap(Map<String, dynamic> map) {
    return JobStorageAccountArgs(
      authenticationMode: pulumi.Input.fromValue(map['authenticationMode'] as String),
      storageAccountKey: (() { final guardedValue = map['storageAccountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: pulumi.Input.fromValue(map['storageAccountName'] as String),
      streamAnalyticsJobId: pulumi.Input.fromValue(map['streamAnalyticsJobId'] as String),
    );
  }
}

