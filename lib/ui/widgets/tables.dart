part of 'widgets.dart';

class UserDataView extends StatelessWidget {
  final String title;
  final String data;
  const UserDataView({Key? key, required this.title, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 14,
            fontWeight: light,
          ),
        ),
        const Spacer(),
        Text(
          data,
          style: blackTextStyle.copyWith(
            fontSize: 14,
            fontWeight: semiBold,
          ),
        ),
      ],
    );
  }
}
