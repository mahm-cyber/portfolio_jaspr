import 'package:jaspr_riverpod/jaspr_riverpod.dart';
import '../domain/models/contact_form.dart';

class ContactState {
  final bool isLoading;
  final bool isSuccess;
  final String? error;

  const ContactState({
    this.isLoading = false,
    this.isSuccess = false,
    this.error,
  });
  
  ContactState copyWith({bool? isLoading, bool? isSuccess, String? error}) {
    return ContactState(
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
      error: error ?? this.error,
    );
  }
}

class ContactNotifier extends Notifier<ContactState> {
  @override
  ContactState build() {
    return const ContactState();
  }

  Future<void> submitForm(ContactForm form) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));
      
      if (form.name.isEmpty || form.email.isEmpty || form.message.isEmpty) {
        throw Exception('All fields are required');
      }

      state = const ContactState(isSuccess: true);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}

final contactProvider = NotifierProvider<ContactNotifier, ContactState>(() {
  return ContactNotifier();
});
