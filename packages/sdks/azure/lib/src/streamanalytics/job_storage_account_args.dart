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
  JobStorageAccountArgs({
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
      authenticationMode: (map['authenticationMode'] as String).input(),
      storageAccountKey: map['storageAccountKey'] == null ? null : (map['storageAccountKey']! as String).input(),
      storageAccountName: (map['storageAccountName'] as String).input(),
      streamAnalyticsJobId: (map['streamAnalyticsJobId'] as String).input(),
    );
  }
}

