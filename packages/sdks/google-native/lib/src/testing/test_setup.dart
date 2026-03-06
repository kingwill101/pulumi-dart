// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account.dart';
import 'apk.dart';
import 'device_file.dart';
import 'environment_variable.dart';
import 'systrace_setup.dart';

/// A description of how to set up the Android device prior to running the test.
class TestSetup {
  /// The device will be logged in on this account for the duration of the test.
  final pulumi.Input<Account>? account;
  /// APKs to install in addition to those being directly tested. These will be installed after the app under test. Currently capped at 100.
  final pulumi.Input<List<Apk>>? additionalApks;
  /// List of directories on the device to upload to GCS at the end of the test; they must be absolute paths under /sdcard, /storage or /data/local/tmp. Path names are restricted to characters a-z A-Z 0-9 _ - . + and / Note: The paths /sdcard and /data will be made available and treated as implicit path substitutions. E.g. if /sdcard on a particular device does not map to external storage, the system will replace it with the external storage path prefix for that device.
  final pulumi.Input<List<String>>? directoriesToPull;
  /// Whether to prevent all runtime permissions to be granted at app install
  final pulumi.Input<bool>? dontAutograntPermissions;
  /// Environment variables to set for the test (only applicable for instrumentation tests).
  final pulumi.Input<List<EnvironmentVariable>>? environmentVariables;
  /// List of files to push to the device before starting the test.
  final pulumi.Input<List<DeviceFile>>? filesToPush;
  /// Optional. Initial setup APKs to install before the app under test is installed. Currently capped at 100.
  final pulumi.Input<List<Apk>>? initialSetupApks;
  /// The network traffic profile used for running the test. Available network profiles can be queried by using the NETWORK_CONFIGURATION environment type when calling TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.
  final pulumi.Input<String>? networkProfile;
  /// Systrace configuration for the run. Deprecated: Systrace used Python 2 which was sunsetted on 2020-01-01. Systrace is no longer supported in the Cloud Testing API, and no Systrace file will be provided in the results.
  final pulumi.Input<SystraceSetup>? systrace;

  /// Creates a new [TestSetup].
  /// [account] The device will be logged in on this account for the duration of the test.
  /// [additionalApks] APKs to install in addition to those being directly tested. These will be installed after the app under test. Currently capped at 100.
  /// [directoriesToPull] List of directories on the device to upload to GCS at the end of the test; they must be absolute paths under /sdcard, /storage or /data/local/tmp. Path names are restricted to characters a-z A-Z 0-9 _ - . + and / Note: The paths /sdcard and /data will be made available and treated as implicit path substitutions. E.g. if /sdcard on a particular device does not map to external storage, the system will replace it with the external storage path prefix for that device.
  /// [dontAutograntPermissions] Whether to prevent all runtime permissions to be granted at app install
  /// [environmentVariables] Environment variables to set for the test (only applicable for instrumentation tests).
  /// [filesToPush] List of files to push to the device before starting the test.
  /// [initialSetupApks] Optional. Initial setup APKs to install before the app under test is installed. Currently capped at 100.
  /// [networkProfile] The network traffic profile used for running the test. Available network profiles can be queried by using the NETWORK_CONFIGURATION environment type when calling TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.
  /// [systrace] Systrace configuration for the run. Deprecated: Systrace used Python 2 which was sunsetted on 2020-01-01. Systrace is no longer supported in the Cloud Testing API, and no Systrace file will be provided in the results.
  const TestSetup({
    this.account,
    this.additionalApks,
    this.directoriesToPull,
    this.dontAutograntPermissions,
    this.environmentVariables,
    this.filesToPush,
    this.initialSetupApks,
    this.networkProfile,
    this.systrace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': ?pulumi.Input.mapOptionalInputValue<Account, Map<String, dynamic>>(account, (value) => value.toMap()),
      'additionalApks': ?pulumi.Input.mapOptionalInputValue<List<Apk>, List<Map<String, dynamic>>>(additionalApks, (value) => pulumi.Input.encodeList<Apk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'directoriesToPull': ?directoriesToPull,
      'dontAutograntPermissions': ?dontAutograntPermissions,
      'environmentVariables': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentVariable>, List<Map<String, dynamic>>>(environmentVariables, (value) => pulumi.Input.encodeList<EnvironmentVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filesToPush': ?pulumi.Input.mapOptionalInputValue<List<DeviceFile>, List<Map<String, dynamic>>>(filesToPush, (value) => pulumi.Input.encodeList<DeviceFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initialSetupApks': ?pulumi.Input.mapOptionalInputValue<List<Apk>, List<Map<String, dynamic>>>(initialSetupApks, (value) => pulumi.Input.encodeList<Apk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkProfile': ?networkProfile,
      'systrace': ?pulumi.Input.mapOptionalInputValue<SystraceSetup, Map<String, dynamic>>(systrace, (value) => value.toMap()),
    };
  }

  factory TestSetup.fromMap(Map<String, dynamic> map) {
    return TestSetup(
      account: (() { final guardedValue = map['account']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Account.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      additionalApks: (() { final guardedValue = map['additionalApks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Apk>(guardedValue, (value) => Apk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      directoriesToPull: (() { final guardedValue = map['directoriesToPull']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dontAutograntPermissions: (() { final guardedValue = map['dontAutograntPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentVariable>(guardedValue, (value) => EnvironmentVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      filesToPush: (() { final guardedValue = map['filesToPush']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeviceFile>(guardedValue, (value) => DeviceFile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      initialSetupApks: (() { final guardedValue = map['initialSetupApks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Apk>(guardedValue, (value) => Apk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      systrace: (() { final guardedValue = map['systrace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SystraceSetup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

