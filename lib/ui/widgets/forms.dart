part of 'widgets.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final bool isShowTitle;
  final TextEditingController? controller;
  final IconData icon;
  final bool obsecureText;
  const CustomFormField({
    Key? key,
    required this.title,
    this.controller,
    this.isShowTitle = true,
    required this.icon,
    this.obsecureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          labelText: isShowTitle ? title : null,
        ),
        obscureText: obsecureText,
      ),
    );
  }
}
