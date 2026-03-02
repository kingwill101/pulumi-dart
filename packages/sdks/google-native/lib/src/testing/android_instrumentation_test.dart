// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'android_instrumentation_test_orchestrator_option.dart';
import 'app_bundle.dart';
import 'file_reference.dart';
import 'sharding_option.dart';

/// A test of an Android application that can control an Android component independently of its normal lifecycle. Android instrumentation tests run an application APK and test APK inside the same process on a virtual or physical AndroidDevice. They also specify a test runner class, such as com.google.GoogleTestRunner, which can vary on the specific instrumentation framework chosen. See for more information on types of Android tests.
class AndroidInstrumentationTest {
  /// The APK for the application under test.
  final pulumi.Input<FileReference>? appApk;
  /// A multi-apk app bundle for the application under test.
  final pulumi.Input<AppBundle>? appBundle;
  /// The java package for the application under test. The default value is determined by examining the application's manifest.
  final pulumi.Input<String>? appPackageId;
  /// The option of whether running each test within its own invocation of instrumentation with Android Test Orchestrator or not. ** Orchestrator is only compatible with AndroidJUnitRunner version 1.1 or higher! ** Orchestrator offers the following benefits: - No shared state - Crashes are isolated - Logs are scoped per test See for more information about Android Test Orchestrator. If not set, the test will be run without the orchestrator.
  final pulumi.Input<AndroidInstrumentationTestOrchestratorOption>? orchestratorOption;
  /// The option to run tests in multiple shards in parallel.
  final pulumi.Input<ShardingOption>? shardingOption;
  /// The APK containing the test code to be executed.
  final pulumi.Input<FileReference> testApk;
  /// The java package for the test to be executed. The default value is determined by examining the application's manifest.
  final pulumi.Input<String>? testPackageId;
  /// The InstrumentationTestRunner class. The default value is determined by examining the application's manifest.
  final pulumi.Input<String>? testRunnerClass;
  /// Each target must be fully qualified with the package name or class name, in one of these formats: - "package package_name" - "class package_name.class_name" - "class package_name.class_name#method_name" If empty, all targets in the module will be run.
  final pulumi.Input<List<String>>? testTargets;

  /// Creates a new [AndroidInstrumentationTest].
  /// [appApk] The APK for the application under test.
  /// [appBundle] A multi-apk app bundle for the application under test.
  /// [appPackageId] The java package for the application under test. The default value is determined by examining the application's manifest.
  /// [orchestratorOption] The option of whether running each test within its own invocation of instrumentation with Android Test Orchestrator or not. ** Orchestrator is only compatible with AndroidJUnitRunner version 1.1 or higher! ** Orchestrator offers the following benefits: - No shared state - Crashes are isolated - Logs are scoped per test See for more information about Android Test Orchestrator. If not set, the test will be run without the orchestrator.
  /// [shardingOption] The option to run tests in multiple shards in parallel.
  /// [testApk] The APK containing the test code to be executed.
  /// [testPackageId] The java package for the test to be executed. The default value is determined by examining the application's manifest.
  /// [testRunnerClass] The InstrumentationTestRunner class. The default value is determined by examining the application's manifest.
  /// [testTargets] Each target must be fully qualified with the package name or class name, in one of these formats: - "package package_name" - "class package_name.class_name" - "class package_name.class_name#method_name" If empty, all targets in the module will be run.
  AndroidInstrumentationTest({
    this.appApk,
    this.appBundle,
    this.appPackageId,
    this.orchestratorOption,
    this.shardingOption,
    required this.testApk,
    this.testPackageId,
    this.testRunnerClass,
    this.testTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appApk': ?pulumi.Input.mapOptionalInputValue<FileReference, Map<String, dynamic>>(appApk, (value) => value.toMap()),
      'appBundle': ?pulumi.Input.mapOptionalInputValue<AppBundle, Map<String, dynamic>>(appBundle, (value) => value.toMap()),
      'appPackageId': ?appPackageId,
      'orchestratorOption': ?pulumi.Input.mapOptionalInputValue<AndroidInstrumentationTestOrchestratorOption, String>(orchestratorOption, (value) => value.value),
      'shardingOption': ?pulumi.Input.mapOptionalInputValue<ShardingOption, Map<String, dynamic>>(shardingOption, (value) => value.toMap()),
      'testApk': pulumi.Input.mapInputValue<FileReference, Map<String, dynamic>>(testApk, (value) => value.toMap()),
      'testPackageId': ?testPackageId,
      'testRunnerClass': ?testRunnerClass,
      'testTargets': ?testTargets,
    };
  }

  factory AndroidInstrumentationTest.fromMap(Map<String, dynamic> map) {
    return AndroidInstrumentationTest(
      appApk: map['appApk'] == null ? null : (FileReference.fromMap((map['appApk']! as Map).cast<String, dynamic>())).input(),
      appBundle: map['appBundle'] == null ? null : (AppBundle.fromMap((map['appBundle']! as Map).cast<String, dynamic>())).input(),
      appPackageId: map['appPackageId'] == null ? null : (map['appPackageId']! as String).input(),
      orchestratorOption: map['orchestratorOption'] == null ? null : (AndroidInstrumentationTestOrchestratorOption.fromValue(map['orchestratorOption']! as String)).input(),
      shardingOption: map['shardingOption'] == null ? null : (ShardingOption.fromMap((map['shardingOption']! as Map).cast<String, dynamic>())).input(),
      testApk: (FileReference.fromMap((map['testApk'] as Map).cast<String, dynamic>())).input(),
      testPackageId: map['testPackageId'] == null ? null : (map['testPackageId']! as String).input(),
      testRunnerClass: map['testRunnerClass'] == null ? null : (map['testRunnerClass']! as String).input(),
      testTargets: map['testTargets'] == null ? null : ((map['testTargets']! as List).cast<String>()).input(),
    );
  }
}

