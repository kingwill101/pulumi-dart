// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_keywords/index.dart' as module_index;
import 'package:pulumi_keywords/lambda.dart' as module_lambda;
import 'package:pulumi_keywords/module.dart' as module_module;
import 'package:pulumi_keywords/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final lambda = _LambdaModuleNamespace();
final module = _ModuleModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final SomeResource = module_index.SomeResource.new;
  final SomeResourceArgs = module_index.SomeResourceArgs.new;
}

class _LambdaModuleNamespace {
  _LambdaModuleNamespace();
  final SomeResource = module_lambda.SomeResource.new;
  final SomeResourceArgs = module_lambda.SomeResourceArgs.new;
}

class _ModuleModuleNamespace {
  _ModuleModuleNamespace();
  final Lambda = module_module.Lambda.new;
  final LambdaArgs = module_module.LambdaArgs.new;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Keywords = module_providers.ProviderProvider.new;
}
