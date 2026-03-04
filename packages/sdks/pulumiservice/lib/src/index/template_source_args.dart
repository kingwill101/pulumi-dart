// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_source_destination.dart';

/// {@template pulumi_index_template_source_args_doc}
/// The set of arguments for TemplateSource.
/// {@endtemplate}
/// {@macro pulumi_index_template_source_args_doc}
class TemplateSourceArgs {
  /// The default destination for projects using templates from this source.
  final pulumi.Input<TemplateSourceDestination>? destination;

  /// Organization name.
  final pulumi.Input<String> organizationName;

  /// Source name.
  final pulumi.Input<String> sourceName;

  /// Github URL of the repository from which to grab templates.
  final pulumi.Input<String> sourceURL;

  /// Creates a new [TemplateSourceArgs].
  /// [destination] The default destination for projects using templates from this source.
  /// [organizationName] Organization name.
  /// [sourceName] Source name.
  /// [sourceURL] Github URL of the repository from which to grab templates.
  TemplateSourceArgs({
    this.destination,
    required this.organizationName,
    required this.sourceName,
    required this.sourceURL,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination':
          ?pulumi.Input.mapOptionalInputValue<
            TemplateSourceDestination,
            Map<String, dynamic>
          >(destination, (value) => value.toMap()),
      'organizationName': organizationName,
      'sourceName': sourceName,
      'sourceURL': sourceURL,
    };
  }

  factory TemplateSourceArgs.fromMap(Map<String, dynamic> map) {
    return TemplateSourceArgs(
      destination: (() {
        final guardedValue = map['destination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TemplateSourceDestination.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      organizationName: pulumi.Input.fromValue(
        map['organizationName'] as String,
      ),
      sourceName: pulumi.Input.fromValue(map['sourceName'] as String),
      sourceURL: pulumi.Input.fromValue(map['sourceURL'] as String),
    );
  }
}
