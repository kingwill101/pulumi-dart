// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_syntax.dart';
import 'method.dart';
import 'mixin.dart';
import 'option.dart';
import 'source_context.dart';

/// Api is a light-weight descriptor for an API Interface. Interfaces are also described as "protocol buffer services" in some contexts, such as by the "service" keyword in a .proto file, but they are different from API Services, which represent a concrete implementation of an interface as opposed to simply a description of methods and bindings. They are also sometimes simply referred to as "APIs" in other contexts, such as the name of this message itself. See https://cloud.google.com/apis/design/glossary for detailed terminology.
class Api {
  /// The methods of this interface, in unspecified order.
  final pulumi.Input<List<Method>>? methods;
  /// Included interfaces. See Mixin.
  final pulumi.Input<List<Mixin>>? mixins;
  /// The fully qualified name of this interface, including package name followed by the interface's simple name.
  final pulumi.Input<String>? name;
  /// Any metadata attached to the interface.
  final pulumi.Input<List<Option>>? options;
  /// Source context for the protocol buffer service represented by this message.
  final pulumi.Input<SourceContext>? sourceContext;
  /// The source syntax of the service.
  final pulumi.Input<ApiSyntax>? syntax;
  /// A version string for this interface. If specified, must have the form `major-version.minor-version`, as in `1.10`. If the minor version is omitted, it defaults to zero. If the entire version field is empty, the major version is derived from the package name, as outlined below. If the field is not empty, the version in the package name will be verified to be consistent with what is provided here. The versioning schema uses [semantic versioning](http://semver.org) where the major version number indicates a breaking change and the minor version an additive, non-breaking change. Both version numbers are signals to users what to expect from different versions, and should be carefully chosen based on the product plan. The major version is also reflected in the package name of the interface, which must end in `v`, as in `google.feature.v1`. For major versions 0 and 1, the suffix can be omitted. Zero major versions must only be used for experimental, non-GA interfaces.
  final pulumi.Input<String>? version;

  /// Creates a new [Api].
  /// [methods] The methods of this interface, in unspecified order.
  /// [mixins] Included interfaces. See Mixin.
  /// [name] The fully qualified name of this interface, including package name followed by the interface's simple name.
  /// [options] Any metadata attached to the interface.
  /// [sourceContext] Source context for the protocol buffer service represented by this message.
  /// [syntax] The source syntax of the service.
  /// [version] A version string for this interface. If specified, must have the form `major-version.minor-version`, as in `1.10`. If the minor version is omitted, it defaults to zero. If the entire version field is empty, the major version is derived from the package name, as outlined below. If the field is not empty, the version in the package name will be verified to be consistent with what is provided here. The versioning schema uses [semantic versioning](http://semver.org) where the major version number indicates a breaking change and the minor version an additive, non-breaking change. Both version numbers are signals to users what to expect from different versions, and should be carefully chosen based on the product plan. The major version is also reflected in the package name of the interface, which must end in `v`, as in `google.feature.v1`. For major versions 0 and 1, the suffix can be omitted. Zero major versions must only be used for experimental, non-GA interfaces.
  const Api({
    this.methods,
    this.mixins,
    this.name,
    this.options,
    this.sourceContext,
    this.syntax,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'methods': ?pulumi.Input.mapOptionalInputValue<List<Method>, List<Map<String, dynamic>>>(methods, (value) => pulumi.Input.encodeList<Method, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mixins': ?pulumi.Input.mapOptionalInputValue<List<Mixin>, List<Map<String, dynamic>>>(mixins, (value) => pulumi.Input.encodeList<Mixin, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'options': ?pulumi.Input.mapOptionalInputValue<List<Option>, List<Map<String, dynamic>>>(options, (value) => pulumi.Input.encodeList<Option, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceContext': ?pulumi.Input.mapOptionalInputValue<SourceContext, Map<String, dynamic>>(sourceContext, (value) => value.toMap()),
      'syntax': ?pulumi.Input.mapOptionalInputValue<ApiSyntax, String>(syntax, (value) => value.wireValue),
      'version': ?version,
    };
  }

  factory Api.fromMap(Map<String, dynamic> map) {
    return Api(
      methods: (() { final guardedValue = map['methods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Method>(guardedValue, (value) => Method.fromMap((value as Map).cast<String, dynamic>()))); })(),
      mixins: (() { final guardedValue = map['mixins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Mixin>(guardedValue, (value) => Mixin.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Option>(guardedValue, (value) => Option.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceContext: (() { final guardedValue = map['sourceContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SourceContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      syntax: (() { final guardedValue = map['syntax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiSyntax.fromValue(guardedValue as String)); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

