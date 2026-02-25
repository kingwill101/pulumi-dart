import 'dart:async';

typedef ResourceHookHandler = FutureOr<void> Function(ResourceHookArgs args);
typedef ErrorHookHandler = FutureOr<bool> Function(ErrorHookArgs args);

class ResourceHook {
  final String name;
  final ResourceHookHandler handler;
  final bool onDryRun;

  const ResourceHook(this.name, this.handler, {this.onDryRun = false});
}

class ResourceHookArgs {
  final String urn;
  final String id;
  final String name;
  final String type;
  final Map<String, dynamic>? newInputs;
  final Map<String, dynamic>? oldInputs;
  final Map<String, dynamic>? newOutputs;
  final Map<String, dynamic>? oldOutputs;

  const ResourceHookArgs({
    required this.urn,
    required this.id,
    required this.name,
    required this.type,
    this.newInputs,
    this.oldInputs,
    this.newOutputs,
    this.oldOutputs,
  });
}

class ErrorHookArgs {
  final String urn;
  final String id;
  final String name;
  final String type;
  final Map<String, dynamic>? newInputs;
  final Map<String, dynamic>? oldInputs;
  final Map<String, dynamic>? oldOutputs;
  final String failedOperation;
  final List<String> errors;

  const ErrorHookArgs({
    required this.urn,
    required this.id,
    required this.name,
    required this.type,
    this.newInputs,
    this.oldInputs,
    this.oldOutputs,
    this.failedOperation = '',
    this.errors = const [],
  });
}

class ErrorHook {
  final String name;
  final ErrorHookHandler handler;

  const ErrorHook(this.name, this.handler);
}

class ResourceHookBinding {
  final List<ResourceHook> beforeCreate;
  final List<ResourceHook> afterCreate;
  final List<ResourceHook> beforeUpdate;
  final List<ResourceHook> afterUpdate;
  final List<ResourceHook> beforeDelete;
  final List<ResourceHook> afterDelete;
  final List<ErrorHook> onError;

  const ResourceHookBinding({
    this.beforeCreate = const [],
    this.afterCreate = const [],
    this.beforeUpdate = const [],
    this.afterUpdate = const [],
    this.beforeDelete = const [],
    this.afterDelete = const [],
    this.onError = const [],
  });

  bool get isEmpty =>
      beforeCreate.isEmpty &&
      afterCreate.isEmpty &&
      beforeUpdate.isEmpty &&
      afterUpdate.isEmpty &&
      beforeDelete.isEmpty &&
      afterDelete.isEmpty &&
      onError.isEmpty;

  ResourceHookBinding copyWith({
    List<ResourceHook>? beforeCreate,
    List<ResourceHook>? afterCreate,
    List<ResourceHook>? beforeUpdate,
    List<ResourceHook>? afterUpdate,
    List<ResourceHook>? beforeDelete,
    List<ResourceHook>? afterDelete,
    List<ErrorHook>? onError,
  }) {
    return ResourceHookBinding(
      beforeCreate: beforeCreate ?? this.beforeCreate,
      afterCreate: afterCreate ?? this.afterCreate,
      beforeUpdate: beforeUpdate ?? this.beforeUpdate,
      afterUpdate: afterUpdate ?? this.afterUpdate,
      beforeDelete: beforeDelete ?? this.beforeDelete,
      afterDelete: afterDelete ?? this.afterDelete,
      onError: onError ?? this.onError,
    );
  }
}
