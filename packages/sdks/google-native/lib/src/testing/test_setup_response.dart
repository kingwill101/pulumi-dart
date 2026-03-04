// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_response.dart';
import 'apk_response.dart';
import 'device_file_response.dart';
import 'environment_variable_response.dart';
import 'systrace_setup_response.dart';

/// A description of how to set up the Android device prior to running the test.
class TestSetupResponse {
  /// The device will be logged in on this account for the duration of the test.
  final pulumi.Input<AccountResponse> account;

  /// APKs to install in addition to those being directly tested. These will be installed after the app under test. Currently capped at 100.
  final pulumi.Input<List<ApkResponse>> additionalApks;

  /// List of directories on the device to upload to GCS at the end of the test; they must be absolute paths under /sdcard, /storage or /data/local/tmp. Path names are restricted to characters a-z A-Z 0-9 _ - . + and / Note: The paths /sdcard and /data will be made available and treated as implicit path substitutions. E.g. if /sdcard on a particular device does not map to external storage, the system will replace it with the external storage path prefix for that device.
  final pulumi.Input<List<String>> directoriesToPull;

  /// Whether to prevent all runtime permissions to be granted at app install
  final pulumi.Input<bool> dontAutograntPermissions;

  /// Environment variables to set for the test (only applicable for instrumentation tests).
  final pulumi.Input<List<EnvironmentVariableResponse>> environmentVariables;

  /// List of files to push to the device before starting the test.
  final pulumi.Input<List<DeviceFileResponse>> filesToPush;

  /// Optional. Initial setup APKs to install before the app under test is installed. Currently capped at 100.
  final pulumi.Input<List<ApkResponse>> initialSetupApks;

  /// The network traffic profile used for running the test. Available network profiles can be queried by using the NETWORK_CONFIGURATION environment type when calling TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.
  final pulumi.Input<String> networkProfile;

  /// Systrace configuration for the run. Deprecated: Systrace used Python 2 which was sunsetted on 2020-01-01. Systrace is no longer supported in the Cloud Testing API, and no Systrace file will be provided in the results.
  final pulumi.Input<SystraceSetupResponse> systrace;

  /// Creates a new [TestSetupResponse].
  /// [account] The device will be logged in on this account for the duration of the test.
  /// [additionalApks] APKs to install in addition to those being directly tested. These will be installed after the app under test. Currently capped at 100.
  /// [directoriesToPull] List of directories on the device to upload to GCS at the end of the test; they must be absolute paths under /sdcard, /storage or /data/local/tmp. Path names are restricted to characters a-z A-Z 0-9 _ - . + and / Note: The paths /sdcard and /data will be made available and treated as implicit path substitutions. E.g. if /sdcard on a particular device does not map to external storage, the system will replace it with the external storage path prefix for that device.
  /// [dontAutograntPermissions] Whether to prevent all runtime permissions to be granted at app install
  /// [environmentVariables] Environment variables to set for the test (only applicable for instrumentation tests).
  /// [filesToPush] List of files to push to the device before starting the test.
  /// [initialSetupApks] Optional. Initial setup APKs to install before the app under test is installed. Currently capped at 100.
  /// [networkProfile] The network traffic profile used for running the test. Available network profiles can be queried by using the NETWORK_CONFIGURATION environment type when calling TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.
  /// [systrace] Systrace configuration for the run. Deprecated: Systrace used Python 2 which was sunsetted on 2020-01-01. Systrace is no longer supported in the Cloud Testing API, and no Systrace file will be provided in the results.
  TestSetupResponse({
    required this.account,
    required this.additionalApks,
    required this.directoriesToPull,
    required this.dontAutograntPermissions,
    required this.environmentVariables,
    required this.filesToPush,
    required this.initialSetupApks,
    required this.networkProfile,
    required this.systrace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account':
          pulumi.Input.mapInputValue<AccountResponse, Map<String, dynamic>>(
            account,
            (value) => value.toMap(),
          ),
      'additionalApks':
          pulumi.Input.mapInputValue<
            List<ApkResponse>,
            List<Map<String, dynamic>>
          >(
            additionalApks,
            (value) =>
                pulumi.Input.encodeList<ApkResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'directoriesToPull': directoriesToPull,
      'dontAutograntPermissions': dontAutograntPermissions,
      'environmentVariables':
          pulumi.Input.mapInputValue<
            List<EnvironmentVariableResponse>,
            List<Map<String, dynamic>>
          >(
            environmentVariables,
            (value) =>
                pulumi.Input.encodeList<
                  EnvironmentVariableResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'filesToPush':
          pulumi.Input.mapInputValue<
            List<DeviceFileResponse>,
            List<Map<String, dynamic>>
          >(
            filesToPush,
            (value) =>
                pulumi.Input.encodeList<
                  DeviceFileResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'initialSetupApks':
          pulumi.Input.mapInputValue<
            List<ApkResponse>,
            List<Map<String, dynamic>>
          >(
            initialSetupApks,
            (value) =>
                pulumi.Input.encodeList<ApkResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'networkProfile': networkProfile,
      'systrace':
          pulumi.Input.mapInputValue<
            SystraceSetupResponse,
            Map<String, dynamic>
          >(systrace, (value) => value.toMap()),
    };
  }

  factory TestSetupResponse.fromMap(Map<String, dynamic> map) {
    return TestSetupResponse(
      account: pulumi.Input.fromValue(
        AccountResponse.fromMap(
          (map['account']! as Map).cast<String, dynamic>(),
        ),
      ),
      additionalApks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ApkResponse>(
          map['additionalApks']!,
          (value) =>
              ApkResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      directoriesToPull: pulumi.Input.fromValue(
        (map['directoriesToPull'] as List).cast<String>(),
      ),
      dontAutograntPermissions: pulumi.Input.fromValue(
        map['dontAutograntPermissions'] as bool,
      ),
      environmentVariables: pulumi.Input.fromValue(
        pulumi.Input.decodeList<EnvironmentVariableResponse>(
          map['environmentVariables']!,
          (value) => EnvironmentVariableResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      filesToPush: pulumi.Input.fromValue(
        pulumi.Input.decodeList<DeviceFileResponse>(
          map['filesToPush']!,
          (value) => DeviceFileResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      initialSetupApks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<ApkResponse>(
          map['initialSetupApks']!,
          (value) =>
              ApkResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      networkProfile: pulumi.Input.fromValue(map['networkProfile'] as String),
      systrace: pulumi.Input.fromValue(
        SystraceSetupResponse.fromMap(
          (map['systrace']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
