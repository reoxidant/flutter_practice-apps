import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  nextStory({int choiceNumber}) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else {
      restart();
    }
  }

  restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    }
    return false;
  }
}

List<Story> _storyData = [
  Story(
      storyTitle:
          'Ваша машина пробила шину на извилистой дороге, а в глуши ваш сотовый телефон без связи. Вы решили ехать автостопом. Ржавый пикап с грохотом останавливается рядом с вами. Мужчина в широкополой шляпе с бездушными глазами открывает вам пассажирскую дверцу и спрашивает: "подвезти, тебя, мальчик?".',
      choice1: 'Я запрыгнул в машину. Спасибо за помощь!',
      choice2: 'Лучше сначала спроси его, не убийца ли он.'),
  Story(
      storyTitle: 'Он медленно кивает, не обращая внимания на вопрос.',
      choice1: 'По крайней мере, он честен. Я сяду в машину.',
      choice2: 'Погоди, я знаю, как поменять колесо.'),
  Story(
      storyTitle:
          'Когда вы садитесь за руль, незнакомец начинает рассказывать о своих отношениях с матерью. С каждой минутой он становится все злее и злее. Он просит вас открыть бардачок. Внутри вы найдете окровавленный нож, два отрубленных пальца и кассету с записью Элтона Джона. Он тянется к бардачку.',
      choice1: 'Я люблю Элтона Джона! Отдаю ему кассету.',
      choice2: 'Либо он или я! Ты берешь нож и наносишь ему удар.'),
  Story(
      storyTitle:
          'Что? Неожиданно вышел полицейский! Знаете ли вы, что дорожно-транспортные происшествия являются второй ведущей причиной смерти от несчастных случаев для большинства взрослых возрастных групп?',
      choice1: 'Начать заново',
      choice2: ''),
  Story(
      storyTitle:
          'Вдруг вы пробиваете ограждение и несетесь к зубчатым скалам внизу, размышляя о сомнительной мудрости закололи бы меня маньяк, который ввел машину, в которой вы находились.',
      choice1: 'Начать заново',
      choice2: ''),
  Story(
      storyTitle:
          '- Ты связываешься с убийцей, напевая стихи из песни "можешь ли ты почувствовать любовь сегодня ночью". Он высаживает тебя в следующем городе. Прежде чем вы уйдете, он спрашивает вас, знаете ли вы хорошие места, где можно выбросить тела. Вы отвечаете: "попробуйте у Пирса".',
      choice1: 'Начать заново',
      choice2: '')
];
