// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  late final _$PageIndexAtom =
      Atom(name: '_HomeViewModelBase.PageIndex', context: context);

  @override
  int get PageIndex {
    _$PageIndexAtom.reportRead();
    return super.PageIndex;
  }

  @override
  set PageIndex(int value) {
    _$PageIndexAtom.reportWrite(value, super.PageIndex, () {
      super.PageIndex = value;
    });
  }

  late final _$_HomeViewModelBaseActionController =
      ActionController(name: '_HomeViewModelBase', context: context);

  @override
  void ChangePageIndex(int NewPageIndex) {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.ChangePageIndex');
    try {
      return super.ChangePageIndex(NewPageIndex);
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
PageIndex: ${PageIndex}
    ''';
  }
}
