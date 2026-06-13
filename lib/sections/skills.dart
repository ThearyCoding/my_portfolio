import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class SkillsSection extends StatelessComponent {
  const SkillsSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'skills', classes: 'skills-section', [
      h2([Component.text('💻 Tech Stack & Skills')]),
      
      // Programming Languages
      div(classes: 'skill-category', [
        h3([Component.text('Programming Languages')]),
        div(classes: 'chips', [
          span(classes: 'chip', [Component.text('Dart')]),
          span(classes: 'chip', [Component.text('TypeScript')]),
          span(classes: 'chip', [Component.text('JavaScript')]),
          span(classes: 'chip', [Component.text('Java')]),
          span(classes: 'chip', [Component.text('PHP')]),
          span(classes: 'chip', [Component.text('C#')]),
          span(classes: 'chip', [Component.text('Python')]),
          span(classes: 'chip', [Component.text('HTML/CSS')]),
        ]),
      ]),
      
      // Frontend Development
      div(classes: 'skill-category', [
        h3([Component.text('Frontend Development')]),
        div(classes: 'chips', [
          span(classes: 'chip', [Component.text('Flutter')]),
          span(classes: 'chip', [Component.text('Jaspr')]),
          span(classes: 'chip', [Component.text('React')]),
          span(classes: 'chip', [Component.text('TypeScript/React')]),
        ]),
      ]),
      
      // Backend Development
      div(classes: 'skill-category', [
        h3([Component.text('Backend Development')]),
        div(classes: 'chips', [
          span(classes: 'chip', [Component.text('Node.js')]),
          span(classes: 'chip', [Component.text('Express.js')]),
          span(classes: 'chip', [Component.text('ASP.NET')]),
          span(classes: 'chip', [Component.text('Java Spring')]),
          span(classes: 'chip', [Component.text('PHP Laravel')]),
          span(classes: 'chip', [Component.text('REST APIs')]),
        ]),
      ]),
      
      // Databases
      div(classes: 'skill-category', [
        h3([Component.text('Databases')]),
        div(classes: 'chips', [
          span(classes: 'chip', [Component.text('MongoDB')]),
          span(classes: 'chip', [Component.text('MySQL')]),
          span(classes: 'chip', [Component.text('SQL Server')]),
          span(classes: 'chip', [Component.text('Firebase')]),
          span(classes: 'chip', [Component.text('Supabase')]),
        ]),
      ]),
      
      // Cloud & DevOps
      div(classes: 'skill-category', [
        h3([Component.text('Cloud & DevOps')]),
        div(classes: 'chips', [
          span(classes: 'chip', [Component.text('AWS')]),
          span(classes: 'chip', [Component.text('Microsoft Azure')]),
          span(classes: 'chip', [Component.text('DigitalOcean')]),
          span(classes: 'chip', [Component.text('Cloudinary')]),
          span(classes: 'chip', [Component.text('Cloudflare')]),
          span(classes: 'chip', [Component.text('Git')]),
        ]),
      ]),
      
      // Tools & Technologies
      div(classes: 'skill-category', [
        h3([Component.text('Tools & Technologies')]),
        div(classes: 'chips', [
          span(classes: 'chip', [Component.text('Firebase')]),
          span(classes: 'chip', [Component.text('Supabase')]),
          span(classes: 'chip', [Component.text('Cloudinary')]),
          span(classes: 'chip', [Component.text('Git')]),
          span(classes: 'chip', [Component.text('API Integration')]),
        ]),
      ]),
    ]);
  }
}