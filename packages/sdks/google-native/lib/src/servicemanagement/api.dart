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
  final List<Method>? methods;
  /// Included interfaces. See Mixin.
  final List<Mixin>? mixins;
  /// The fully qualified name of this interface, including package name followed by the interface's simple name.
  final String? name;
  /// Any metadata attached to the interface.
  final List<Option>? options;
  /// Source context for the protocol buffer service represented by this message.
  final SourceContext? sourceContext;
  /// The source syntax of the service.
  final ApiSyntax? syntax;
  /// A version string for this interface. If specified, must have the form `major-version.minor-version`, as in `1.10`. If the minor version is omitted, it defaults to zero. If the entire version field is empty, the major version is derived from the package name, as outlined below. If the field is not empty, the version in the package name will be verified to be consistent with what is provided here. The versioning schema uses [semantic versioning](http://semver.org) where the major version number indicates a breaking change and the minor version an additive, non-breaking change. Both version numbers are signals to users what to expect from different versions, and should be carefully chosen based on the product plan. The major version is also reflected in the package name of the interface, which must end in `v`, as in `google.feature.v1`. For major versions 0 and 1, the suffix can be omitted. Zero major versions must only be used for experimental, non-GA interfaces.
  final String? version;

  /// Creates a new [Api].
  /// [methods] The methods of this interface, in unspecified order.
  /// [mixins] Included interfaces. See Mixin.
  /// [name] The fully qualified name of this interface, including package name followed by the interface's simple name.
  /// [options] Any metadata attached to the interface.
  /// [sourceContext] Source context for the protocol buffer service represented by this message.
  /// [syntax] The source syntax of the service.
  /// [version] A version string for this interface. If specified, must have the form `major-version.minor-version`, as in `1.10`. If the minor version is omitted, it defaults to zero. If the entire version field is empty, the major version is derived from the package name, as outlined below. If the field is not empty, the version in the package name will be verified to be consistent with what is provided here. The versioning schema uses [semantic versioning](http://semver.org) where the major version number indicates a breaking change and the minor version an additive, non-breaking change. Both version numbers are signals to users what to expect from different versions, and should be carefully chosen based on the product plan. The major version is also reflected in the package name of the interface, which must end in `v`, as in `google.feature.v1`. For major versions 0 and 1, the suffix can be omitted. Zero major versions must only be used for experimental, non-GA interfaces.
  Api({
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
      'methods': ?methods == null ? null : pulumi.Input.encodeList<Method, Map<String, dynamic>>(methods!, (value) => value.toMap()),
      'mixins': ?mixins == null ? null : pulumi.Input.encodeList<Mixin, Map<String, dynamic>>(mixins!, (value) => value.toMap()),
      'name': ?name,
      'options': ?options == null ? null : pulumi.Input.encodeList<Option, Map<String, dynamic>>(options!, (value) => value.toMap()),
      'sourceContext': ?sourceContext == null ? null : sourceContext!.toMap(),
      'syntax': ?syntax == null ? null : syntax!.value,
      'version': ?version,
    };
  }

  factory Api.fromMap(Map<String, dynamic> map) {
    return Api(
      methods: map['methods'] == null ? null : pulumi.Input.decodeList<Method>(map['methods'], (value) => Method.fromMap((value as Map).cast<String, dynamic>())),
      mixins: map['mixins'] == null ? null : pulumi.Input.decodeList<Mixin>(map['mixins'], (value) => Mixin.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      options: map['options'] == null ? null : pulumi.Input.decodeList<Option>(map['options'], (value) => Option.fromMap((value as Map).cast<String, dynamic>())),
      sourceContext: map['sourceContext'] == null ? null : SourceContext.fromMap((map['sourceContext'] as Map).cast<String, dynamic>()),
      syntax: map['syntax'] == null ? null : ApiSyntax.fromValue(map['syntax'] as String),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

