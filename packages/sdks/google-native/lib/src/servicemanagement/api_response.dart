// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'method_response.dart';
import 'mixin_response.dart';
import 'option_response.dart';
import 'source_context_response.dart';

/// Api is a light-weight descriptor for an API Interface. Interfaces are also described as "protocol buffer services" in some contexts, such as by the "service" keyword in a .proto file, but they are different from API Services, which represent a concrete implementation of an interface as opposed to simply a description of methods and bindings. They are also sometimes simply referred to as "APIs" in other contexts, such as the name of this message itself. See https://cloud.google.com/apis/design/glossary for detailed terminology.
class ApiResponse {
  /// The methods of this interface, in unspecified order.
  final pulumi.Input<List<MethodResponse>> methods;
  /// Included interfaces. See Mixin.
  final pulumi.Input<List<MixinResponse>> mixins;
  /// The fully qualified name of this interface, including package name followed by the interface's simple name.
  final pulumi.Input<String> name;
  /// Any metadata attached to the interface.
  final pulumi.Input<List<OptionResponse>> options;
  /// Source context for the protocol buffer service represented by this message.
  final pulumi.Input<SourceContextResponse> sourceContext;
  /// The source syntax of the service.
  final pulumi.Input<String> syntax;
  /// A version string for this interface. If specified, must have the form `major-version.minor-version`, as in `1.10`. If the minor version is omitted, it defaults to zero. If the entire version field is empty, the major version is derived from the package name, as outlined below. If the field is not empty, the version in the package name will be verified to be consistent with what is provided here. The versioning schema uses [semantic versioning](http://semver.org) where the major version number indicates a breaking change and the minor version an additive, non-breaking change. Both version numbers are signals to users what to expect from different versions, and should be carefully chosen based on the product plan. The major version is also reflected in the package name of the interface, which must end in `v`, as in `google.feature.v1`. For major versions 0 and 1, the suffix can be omitted. Zero major versions must only be used for experimental, non-GA interfaces.
  final pulumi.Input<String> version;

  /// Creates a new [ApiResponse].
  /// [methods] The methods of this interface, in unspecified order.
  /// [mixins] Included interfaces. See Mixin.
  /// [name] The fully qualified name of this interface, including package name followed by the interface's simple name.
  /// [options] Any metadata attached to the interface.
  /// [sourceContext] Source context for the protocol buffer service represented by this message.
  /// [syntax] The source syntax of the service.
  /// [version] A version string for this interface. If specified, must have the form `major-version.minor-version`, as in `1.10`. If the minor version is omitted, it defaults to zero. If the entire version field is empty, the major version is derived from the package name, as outlined below. If the field is not empty, the version in the package name will be verified to be consistent with what is provided here. The versioning schema uses [semantic versioning](http://semver.org) where the major version number indicates a breaking change and the minor version an additive, non-breaking change. Both version numbers are signals to users what to expect from different versions, and should be carefully chosen based on the product plan. The major version is also reflected in the package name of the interface, which must end in `v`, as in `google.feature.v1`. For major versions 0 and 1, the suffix can be omitted. Zero major versions must only be used for experimental, non-GA interfaces.
  ApiResponse({
    required this.methods,
    required this.mixins,
    required this.name,
    required this.options,
    required this.sourceContext,
    required this.syntax,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methods': pulumi.Input.mapInputValue<List<MethodResponse>, List<Map<String, dynamic>>>(methods, (value) => pulumi.Input.encodeList<MethodResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mixins': pulumi.Input.mapInputValue<List<MixinResponse>, List<Map<String, dynamic>>>(mixins, (value) => pulumi.Input.encodeList<MixinResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'options': pulumi.Input.mapInputValue<List<OptionResponse>, List<Map<String, dynamic>>>(options, (value) => pulumi.Input.encodeList<OptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceContext': pulumi.Input.mapInputValue<SourceContextResponse, Map<String, dynamic>>(sourceContext, (value) => value.toMap()),
      'syntax': syntax,
      'version': version,
    };
  }

  factory ApiResponse.fromMap(Map<String, dynamic> map) {
    return ApiResponse(
      methods: (pulumi.Input.decodeList<MethodResponse>(map['methods'], (value) => MethodResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      mixins: (pulumi.Input.decodeList<MixinResponse>(map['mixins'], (value) => MixinResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      options: (pulumi.Input.decodeList<OptionResponse>(map['options'], (value) => OptionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceContext: (SourceContextResponse.fromMap((map['sourceContext'] as Map).cast<String, dynamic>())).input(),
      syntax: (map['syntax'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

