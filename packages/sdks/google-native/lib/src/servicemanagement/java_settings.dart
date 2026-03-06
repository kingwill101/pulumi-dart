// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'common_language_settings.dart';

/// Settings for Java client libraries.
class JavaSettings {
  /// Some settings.
  final pulumi.Input<CommonLanguageSettings>? common;
  /// The package name to use in Java. Clobbers the java_package option set in the protobuf. This should be used **only** by APIs who have already set the language_settings.java.package_name" field in gapic.yaml. API teams should use the protobuf java_package option where possible. Example of a YAML configuration:: publishing: java_settings: library_package: com.google.cloud.pubsub.v1
  final pulumi.Input<String>? libraryPackage;
  /// Configure the Java class name to use instead of the service's for its corresponding generated GAPIC client. Keys are fully-qualified service names as they appear in the protobuf (including the full the language_settings.java.interface_names" field in gapic.yaml. API teams should otherwise use the service name as it appears in the protobuf. Example of a YAML configuration:: publishing: java_settings: service_class_names: - google.pubsub.v1.Publisher: TopicAdmin - google.pubsub.v1.Subscriber: SubscriptionAdmin
  final pulumi.Input<Map<String, String>>? serviceClassNames;

  /// Creates a new [JavaSettings].
  /// [common] Some settings.
  /// [libraryPackage] The package name to use in Java. Clobbers the java_package option set in the protobuf. This should be used **only** by APIs who have already set the language_settings.java.package_name" field in gapic.yaml. API teams should use the protobuf java_package option where possible. Example of a YAML configuration:: publishing: java_settings: library_package: com.google.cloud.pubsub.v1
  /// [serviceClassNames] Configure the Java class name to use instead of the service's for its corresponding generated GAPIC client. Keys are fully-qualified service names as they appear in the protobuf (including the full the language_settings.java.interface_names" field in gapic.yaml. API teams should otherwise use the service name as it appears in the protobuf. Example of a YAML configuration:: publishing: java_settings: service_class_names: - google.pubsub.v1.Publisher: TopicAdmin - google.pubsub.v1.Subscriber: SubscriptionAdmin
  const JavaSettings({
    this.common,
    this.libraryPackage,
    this.serviceClassNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'common': ?pulumi.Input.mapOptionalInputValue<CommonLanguageSettings, Map<String, dynamic>>(common, (value) => value.toMap()),
      'libraryPackage': ?libraryPackage,
      'serviceClassNames': ?serviceClassNames,
    };
  }

  factory JavaSettings.fromMap(Map<String, dynamic> map) {
    return JavaSettings(
      common: (() { final guardedValue = map['common']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CommonLanguageSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      libraryPackage: (() { final guardedValue = map['libraryPackage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceClassNames: (() { final guardedValue = map['serviceClassNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

