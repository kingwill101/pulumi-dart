// ignore_for_file: unused_field

import 'dart:collection';
import 'dart:async';

import 'package:pulumi/src/constants.dart';
import 'package:pulumi/src/deployment/deployment.dart';
import 'package:pulumi/src/deployment/models.dart' as models;
import 'package:pulumi/src/deserializer.dart';
import 'package:pulumi/src/input.dart';
import 'package:pulumi/src/output.dart';
import 'package:pulumi/src/output_completion_source.dart';
import 'package:pulumi/src/resource/dependency_resource.dart';
import 'package:protobuf/well_known_types/google/protobuf/struct.pb.dart';

import 'provider_resource.dart';
import 'resource_options.dart';
import 'resource_transformation.dart';

abstract class Resource {
  final String _type;
  final String _name;
  final bool _custom;
  final Set<Resource> childResources = HashSet<Resource>();

  late final Output<String> urn;
  final Completer<String> _urnCompleter = Completer<String>();

  bool _protect;
  List<ResourceTransformation> _transformations;
  List<ResourceTransform> _resourceTransforms;
  List<Input<String>> _aliases;
  Map<String, ProviderResource> _providers;
  ProviderResource? _provider;
  String? _version;
  String? _pluginDownloadURL;

  List<ResourceTransformation> get transformations => _transformations;
  List<ResourceTransform> get resourceTransforms => _resourceTransforms;

  late final Map<String, IOutputCompletionSource> completionSources;
  Struct? _pendingResolvedOutputs;
  Exception? _pendingOutputException;

  Resource(
    this._type,
    this._name,
    bool custom,
    Inputs props,
    ResourceOptions options, {
    bool remote = false,
    bool dependency = false,
    models.RegisterPackageRequest? registerPackageRequest,
    bool ignoreDeployment = false,
  }) : _custom = custom,
       _protect = false,
       _transformations = [],
       _resourceTransforms = [],
       _aliases = [],
       _providers = {},
       _provider = null,
       _version = null,
       _pluginDownloadURL = null {
    urn = Output<String>(
      _urnCompleter.future.then(
        (value) => OutputData<String>(
          value: value,
          isKnown: true,
          isSecret: false,
          resources: {},
        ),
      ),
    );

    if (dependency) {
      completionSources = {};
      return;
    }

    if (_type.isEmpty) {
      throw ArgumentError("'type' cannot be empty.");
    }
    if (_name.isEmpty) {
      throw ArgumentError("'name' cannot be empty.");
    }

    // Initialize all Output properties
    completionSources = OutputCompletionSource.initializeOutputs(this);

    Resource? parent;
    if (_type == DeploymentImpl.rootPulumiStackTypeName) {
      parent = null;
    } else if (options.parent != null) {
      parent = options.parent;
    } else if (_type.startsWith('pulumi:providers:')) {
      // Preserve provider parent behavior for parity with existing SDK behavior.
      parent = null;
    } else {
      try {
        parent = DeploymentImpl.instance.stack;
      } on StateError {
        parent = null;
      }
    }

    var transformations = [...options.resourceTransformations];
    var resourceTransforms = [...options.resourceTransforms];
    if (parent != null) {
      transformations.addAll(parent.transformations);
      resourceTransforms.addAll(parent.resourceTransforms);
    }
    _transformations = transformations;
    _resourceTransforms = resourceTransforms;

    for (var transformation in transformations) {
      var tres = transformation(
        ResourceTransformationArgs(this, props, options),
      );
      if (tres != null) {
        if (tres.options.parent != options.parent) {
          throw ArgumentError(
            "Transformations cannot currently be used to change the 'parent' of a resource.",
          );
        }
        props = tres.args;
        options = tres.options;
      }
    }

    options = options.clone();
    if (options.parent == null && parent != null) {
      options = options.merge(ResourceOptions(parent: parent));
    }

    _providers = {};

    if (options.parent != null && options.parent is Resource) {
      (options.parent as Resource).childResources.add(this);
      _protect = options.protect ?? (options.parent as Resource)._protect;
      _providers = Map.from((options.parent as Resource)._providers);
    }

    ProviderResource? effectiveProvider = options.provider;
    final typeComponents = _type.split(':');
    final resourcePackage = typeComponents.length == 3
        ? typeComponents[0]
        : null;

    if (custom) {
      if (effectiveProvider == null &&
          options.parent != null &&
          options.parent is Resource) {
        effectiveProvider = (options.parent as Resource).getProvider(_type);
      }

      if (effectiveProvider != null) {
        if (resourcePackage != null &&
            effectiveProvider.package != resourcePackage) {
          effectiveProvider = null;
        } else if (resourcePackage != null) {
          _providers[resourcePackage] = effectiveProvider;
        }
      }

      if (!identical(options.provider, effectiveProvider)) {
        options = _copyResourceOptionsWithProvider(options, effectiveProvider);
      }
    } else {
      final providerList = <ProviderResource>[
        ...options.providers,
        if (options.provider != null) options.provider!,
      ];
      for (var provider in providerList) {
        _providers[provider.package] = provider;
      }
    }

    _protect = options.protect ?? false;
    _provider = custom ? effectiveProvider : null;
    _version = options.version;
    _pluginDownloadURL = options.pluginDownloadURL;

    _aliases =
        options.aliases
            ?.map(
              (alias) => DeploymentImpl.instance.collapseAliasToUrn(
                alias,
                _name,
                _type,
                options.parent,
              ),
            )
            .toList() ??
        [];

    final register = DeploymentImpl.instance.readOrRegisterResource(
      resource: this,
      remote: remote,
      newDependency: (urn) => DependencyResource(urn),
      args: props,
      opts: options,
      registerPackageRequest: registerPackageRequest,
    );
    DeploymentImpl.instance.registerResourceOperation(register);
  }

  void resolveUrn(String value) {
    if (!_urnCompleter.isCompleted) {
      _urnCompleter.complete(value);
    }
  }

  Output<T> registerOutput<T>(String propertyName) {
    final source = OutputCompletionSource.create<T>(this);
    completionSources[propertyName] = source;
    if (_pendingOutputException != null) {
      source.trySetException(_pendingOutputException!);
    } else if (_pendingResolvedOutputs != null) {
      _resolveCompletionSource(propertyName, source, _pendingResolvedOutputs!);
    }
    return source.output as Output<T>;
  }

  void resolveOutputs(Struct outputs) {
    _pendingResolvedOutputs = outputs;
    if (completionSources.isEmpty) {
      return;
    }

    for (final entry in completionSources.entries) {
      _resolveCompletionSource(entry.key, entry.value, outputs);
    }
  }

  void failOutputs(Object error) {
    final exception = error is Exception ? error : Exception(error.toString());
    _pendingOutputException = exception;

    if (completionSources.isEmpty) {
      return;
    }

    for (final source in completionSources.values) {
      source.trySetException(exception);
    }
  }

  void _resolveCompletionSource(
    String propertyName,
    IOutputCompletionSource source,
    Struct outputs,
  ) {
    final value = outputs.fields[propertyName];
    if (value == null) {
      source.trySetDefaultResult(true);
      return;
    }

    final data = Deserializer.deserialize<Object?>(value);
    source.setValue(
      OutputData<Object?>(
        value: data.value,
        isKnown: data.isKnown,
        isSecret: data.isSecret,
        resources: {...data.resources, this},
      ),
    );
  }

  Future<Struct> serializeProperties(Map<String, dynamic> properties) async {
    final serializedProps = Struct();
    for (var entry in properties.entries) {
      serializedProps.fields[entry.key] = await _serializeValue(entry.value);
    }
    return serializedProps;
  }

  Future<Value> _serializeValue(dynamic value) async {
    final v = Value();
    if (value == null) {
      v.nullValue = NullValue.NULL_VALUE;
      return v;
    }

    if (value is Input) {
      return _serializeValue(value.toOutput());
    }

    if (value is Output) {
      final data = await value.getData();
      if (!data.isKnown) {
        v.stringValue = _unknownSentinelForOutput(value);
        return v;
      }

      final inner = await _serializeValue(data.value);
      if (!data.isSecret) {
        return inner;
      }

      final secret = Struct()
        ..fields[Constants.specialSigKey] = (Value()
          ..stringValue = Constants.specialSecretSig)
        ..fields[Constants.valueName] = inner;
      v.structValue = secret;
      return v;
    }

    if (value is Resource) {
      final urn = await value.urn.getValue();
      final resourceRef = Struct()
        ..fields[Constants.specialSigKey] = (Value()
          ..stringValue = Constants.specialResourceSig)
        ..fields[Constants.resourceUrnName] = (Value()..stringValue = urn);

      try {
        final id = await (value as dynamic).id.getValue();
        if (id is String && id.isNotEmpty) {
          resourceRef.fields[Constants.resourceIdName] = Value()
            ..stringValue = id;
        }
      } catch (_) {
        // Non-custom resources do not expose an ID.
      }

      v.structValue = resourceRef;
      return v;
    }

    if (value is int) {
      v.numberValue = value.toDouble();
    } else if (value is double) {
      v.numberValue = value;
    } else if (value is String) {
      v.stringValue = value;
    } else if (value is bool) {
      v.boolValue = value;
    } else if (value is Map) {
      final struct = Struct();
      var hasUnknownDescendant = false;
      for (final entry in value.entries) {
        final serialized = await _serializeValue(entry.value);
        if (_containsUnknownsInSerializedValue(serialized)) {
          hasUnknownDescendant = true;
        }
        struct.fields[entry.key.toString()] = serialized;
      }
      if (hasUnknownDescendant) {
        v.stringValue = Constants.unknownObjectValue;
        return v;
      }
      v.structValue = struct;
    } else if (value is Iterable) {
      var listValue = ListValue();
      var hasUnknownDescendant = false;
      for (var item in value) {
        final serialized = await _serializeValue(item);
        if (_containsUnknownsInSerializedValue(serialized)) {
          hasUnknownDescendant = true;
        }
        listValue.values.add(serialized);
      }
      if (hasUnknownDescendant) {
        v.stringValue = Constants.unknownArrayValue;
        return v;
      }
      v.listValue = listValue;
    } else {
      v.stringValue = value.toString();
    }
    return v;
  }

  String _unknownSentinelForOutput(Output output) {
    if (output is Output<bool>) {
      return Constants.unknownBoolValue;
    }
    if (output is Output<int> ||
        output is Output<double> ||
        output is Output<num>) {
      return Constants.unknownNumberValue;
    }
    if (output is Output<List> || output is Output<Iterable>) {
      return Constants.unknownArrayValue;
    }
    if (output is Output<Map>) {
      return Constants.unknownObjectValue;
    }
    return Constants.unknownValue;
  }

  bool _containsUnknownsInSerializedValue(Value value) {
    if (value.whichKind() == Value_Kind.stringValue) {
      return Constants.isUnknownSentinel(value.stringValue);
    }

    if (value.whichKind() == Value_Kind.listValue) {
      for (final element in value.listValue.values) {
        if (_containsUnknownsInSerializedValue(element)) {
          return true;
        }
      }
      return false;
    }

    if (value.whichKind() == Value_Kind.structValue) {
      for (final entry in value.structValue.fields.entries) {
        if (entry.key == Constants.specialSigKey) {
          continue;
        }
        if (_containsUnknownsInSerializedValue(entry.value)) {
          return true;
        }
      }
      return false;
    }

    return false;
  }

  bool get isCustom => _custom;

  String getResourceType() => _type;

  String getResourceName() => _name;

  ProviderResource? getProvider(String moduleMember) {
    var memComponents = moduleMember.split(':');
    if (memComponents.length != 3) {
      return null;
    }
    return _providers[memComponents[0]];
  }

  static Map<String, ProviderResource> convertToProvidersMap(
    List<ProviderResource>? providers,
  ) {
    var result = <String, ProviderResource>{};
    if (providers != null) {
      for (var provider in providers) {
        result[provider.package] = provider;
      }
    }
    return result;
  }
}

class ResourceException implements Exception {
  final String message;
  final Resource? parent;

  ResourceException(this.message, this.parent);

  @override
  String toString() =>
      'ResourceException: $message${parent != null ? ' (Parent: ${parent!.getResourceName()})' : ''}';
}

ResourceOptions _copyResourceOptionsWithProvider(
  ResourceOptions options,
  ProviderResource? provider,
) {
  return ResourceOptions(
    parent: options.parent,
    dependsOn: options.dependsOn,
    protect: options.protect,
    provider: provider,
    providers: options.providers,
    aliases: options.aliases,
    customTimeouts: options.customTimeouts,
    deleteBeforeReplace: options.deleteBeforeReplace,
    retainOnDelete: options.retainOnDelete,
    deletedWith: options.deletedWith,
    additionalSecretOutputs: options.additionalSecretOutputs,
    ignoreChanges: options.ignoreChanges,
    version: options.version,
    pluginDownloadURL: options.pluginDownloadURL,
    replacementTrigger: options.replacementTrigger,
    replacementOptions: options.replacementOptions,
    resourceTransformations: options.resourceTransformations,
    resourceTransforms: options.resourceTransforms,
    hooks: options.hooks,
  );
}
