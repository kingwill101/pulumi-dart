// ignore_for_file: non_constant_identifier_names

import 'package:pulumi_nestedobject/index.dart' as module_index;
import 'package:pulumi_nestedobject/providers.dart' as module_providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final Container = module_index.Container.new;
  final ContainerArgs = module_index.ContainerArgs.new;
  final Detail = module_index.Detail.new;
  final DetailArgs = module_index.Detail.new;
  final GetValuesArgs = module_index.GetValuesArgs.new;
  final GetValuesResult = module_index.GetValuesResult.new;
  final GetValuesResultArgs = module_index.GetValuesResult.new;
  final MapContainer = module_index.MapContainer.new;
  final MapContainerArgs = module_index.MapContainerArgs.new;
  final Receiver = module_index.Receiver.new;
  final ReceiverArgs = module_index.ReceiverArgs.new;
  final Target = module_index.Target.new;
  final TargetArgs = module_index.TargetArgs.new;
  final getValues = module_index.getValues;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final Nestedobject = module_providers.ProviderProvider.new;
}
