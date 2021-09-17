// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ExpansionTileExample extends StatefulWidget {
  static const routeName = "/expansiontiles";

  @override
  createState() => _ExpansionTileExampleState();
}

class _ExpansionTileExampleState extends State<ExpansionTileExample> {
  Widget expansionTile(IconData icon, String title, String html,
      {bool isHTML = true}) {
    return ExpansionTile(
      collapsedBackgroundColor: Colors.black.withOpacity(0.1),
      leading: Icon(icon),
      title: Text(title),
      children: [
        isHTML ? Html(data: html) : Text(html),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Expansion Tiles with HTML content"),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          expansionTile(
              Icons.text_snippet, "Lorem Ipsum (1092 bytes, crashes)", lorem),
          expansionTile(Icons.text_snippet_outlined,
              "Lorem Ipsum (not HTML, crashes)", lorem,
              isHTML: false),
          expansionTile(
              Icons.public, "example.com (Does not crash)", exampleCom),
          expansionTile(
              MdiIcons.google,
              "Google Code of Conduct (Sept. 25 2020, crashes)",
              googleCodeOfConduct)
        ])));
  }

  static String lorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam sit amet nulla viverra, aliquet tortor in, ullamcorper nulla. In arcu diam, blandit sit amet quam quis, egestas mattis tortor. Proin nec placerat felis. Fusce rutrum faucibus porttitor. Integer varius tristique leo. Cras volutpat semper erat, id congue nulla venenatis eget. Maecenas rhoncus rutrum leo, in tempor quam volutpat ac. Nullam a rutrum augue. Nunc laoreet egestas purus, quis elementum tortor ullamcorper vel. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras pretium sollicitudin nibh quis volutpat. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut sodales fringilla pharetra. Nam id mattis purus, nec interdum nibh. Mauris varius nec tortor at tincidunt. Morbi sollicitudin lacus nunc. Sed placerat justo ligula, ac molestie risus eleifend et. Phasellus viverra diam et pretium egestas. Aliquam massa sapien, semper ac justo nec, tincidunt cursus erat. Phasellus eu mi ac massa porttitor ornare dignissim eu mi. Mauris massa nunc.";
  static String exampleCom = """<!doctype html>
<html>
<head>
    <title>Example Domain</title>

    <meta charset="utf-8" />
    <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style type="text/css">
    body {
        background-color: #f0f0f2;
        margin: 0;
        padding: 0;
        font-family: -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", "Open Sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
        
    }
    div {
        width: 600px;
        margin: 5em auto;
        padding: 2em;
        background-color: #fdfdff;
        border-radius: 0.5em;
        box-shadow: 2px 3px 7px 2px rgba(0,0,0,0.02);
    }
    a:link, a:visited {
        color: #38488f;
        text-decoration: none;
    }
    @media (max-width: 700px) {
        div {
            margin: 0 auto;
            width: auto;
        }
    }
    </style>    
</head>

<body>
<div>
    <h1>Example Domain</h1>
    <p>This domain is for use in illustrative examples in documents. You may use this
    domain in literature without prior coordination or asking for permission.</p>
    <p><a href="https://www.iana.org/domains/example">More information...</a></p>
</div>
</body>
</html>
""";
  static String googleCodeOfConduct = """
<body>
    <!--<h1>
      <a id="logo" href="./" title="Alphabet Investor Relations">Alphabet Investor Relations</a>
    </h1>-->
    <main>
      <div class="wrapper">
        <div class="other code-of-conduct content-container">
          <section>
            <h2 class="section-title">
              Google Code of Conduct
            </h2>
            <div class="content">
              <p>
                The Google Code of Conduct is one of the ways we
                put Google’s values into practice. It’s built
                around the recognition that everything we do in
                connection with our work at Google will be, and
                should be, measured against the highest possible
                standards of ethical business conduct. We set the
                bar that high for practical as well as aspirational
                reasons: Our commitment to the highest standards
                helps us hire great people, build great products,
                and attract loyal users. Respect for our users, for
                the opportunity, and for each other are
                foundational to our success, and are something we
                need to support every day.
              </p>
              <p>
                So please do read the Code and Google’s values, and
                follow both in spirit and letter, always bearing in
                mind that each of us has a personal responsibility
                to incorporate, and to encourage other Googlers to
                incorporate, the principles of the Code and values
                into our work. And if you have a question or ever
                think that one of your fellow Googlers or the
                company as a whole may be falling short of our
                commitment, don’t be silent. We want – and need –
                to hear from you.
              </p>
              <h3>
                Who Must Follow Our Code?
              </h3>
              <p>
                We expect all of our employees and Board members to
                know and follow the Code. Failure to do so can
                result in disciplinary action, including
                termination of employment. Moreover, while the Code
                is specifically written for Google employees and
                Board members, we expect members of our extended
                workforce (temps, vendors, and independent
                contractors) and others who may be temporarily
                assigned to perform work or services for Google to
                follow the Code in connection with their work for
                us. Failure of a member of our extended workforce
                or other covered service provider to follow the
                Code can result in termination of their
                relationship with Google.
              </p>
              <h3>
                What If I Have a Code-Related Question or Concern?
              </h3>
              <p>
                If you have a question or concern, don’t just sit
                there. You can contact your manager, your Human
                Resources representative or Ethics &amp; Compliance.
                You can also submit a question or raise a concern
                of a suspected violation of our Code or any other
                Google policy through the Ethics &amp; Compliance
                Helpline. If you believe a violation of law has
                occurred, you can always raise that through the
                Ethics &amp; Compliance helpline or with a government
                agency.
              </p>
              <p>
                If you have a misconduct concern about the CEO, a
                direct report to the CEO, or a Senior Vice
                President, you may also notify the Audit Committee
                of Alphabet’s Board of Directors. To notify the
                Audit Committee, please mail your concern to:
              </p>
              <p>
                Alphabet Inc.<br>
                Attn: Workplace Concern<br>
                1600 Amphitheatre Parkway<br>
                Mountain View, CA 94043
              </p>
              <p>
                You may report your concerns to the Audit Committee
                anonymously. However, the Audit Committee
                encourages you to provide your name and contact
                information so that we may contact you directly if
                necessary.
              </p>
              <h3>
                No Retaliation
              </h3>
              <p>
                Google prohibits retaliation against any worker
                here at Google who reports or participates in an
                investigation of a possible violation of our Code,
                policies, or the law. If you believe you are being
                retaliated against, please contact Ethics &amp;
                Compliance.
              </p>
              <h3>
                I. Serve Our Users
              </h3>
              <p>
                Our users value Google not only because we deliver
                great products and services, but because we hold
                ourselves to a higher standard in how we treat
                users and operate more generally. Keeping the
                following principles in mind will help us to
                maintain that high standard:
              </p>
              <ol>
                <li>
                  <h3>
                    Integrity
                  </h3>
                  <p>
                    Our reputation as a company that our users can
                    trust is our most valuable asset, and it is up
                    to all of us to make sure that we continually
                    earn that trust. All of our communications and
                    other interactions with our users should
                    increase their trust in us.
                  </p>
                </li>
                <li>
                  <h3>
                    Usefulness
                  </h3>
                  <p>
                    Our products, features, and services should
                    make Google more useful for all our users. We
                    have many different types of users, from
                    individuals to large businesses, but one
                    guiding principle: “Is what we are offering
                    useful?”
                  </p>
                </li>
                <li>
                  <h3>
                    Privacy, Security, and Freedom of Expression
                  </h3>
                  <p>
                    Always remember that we are asking users to
                    trust us with their personal information.
                    Preserving that trust requires that each of us
                    respect and protect the privacy and security of
                    that information. Our security procedures
                    strictly limit access to and use of users’
                    personal information, and require that each of
                    us take measures to protect user data from
                    unauthorized access. Know your responsibilities
                    under these procedures, and collect, use, and
                    access user personal information only as
                    authorized by our Security Policies, our
                    Privacy Policies, and applicable data
                    protection laws.
                  </p>
                  <p>
                    Google is committed to advancing privacy and
                    freedom of expression for our users around the
                    world. Where user privacy and freedom of
                    expression face government challenges, we seek
                    to implement internationally recognized
                    standards that respect those rights as we
                    develop products, do business in diverse
                    markets, and respond to government requests to
                    access user information or remove user content.
                    Contact Legal or Ethics &amp; Compliance if you
                    have questions on implementing these standards
                    in connection with what you do at Google.
                  </p>
                </li>
                <li>
                  <h3>
                    Responsiveness
                  </h3>
                  <p>
                    Part of being useful and honest is being
                    responsive: We recognize relevant user feedback
                    when we see it, and we do something about it.
                    We take pride in responding to communications
                    from our users, whether questions, problems, or
                    compliments. If something is broken, fix it.
                  </p>
                </li>
                <li>
                  <h3>
                    Take Action
                  </h3>
                  <p>
                    Any time you feel our users aren’t being
                    well-served, don’t be bashful - let someone in
                    the company know about it. Continually
                    improving our products and services takes all
                    of us, and we’re proud that Googlers champion
                    our users and take the initiative to step
                    forward when the interests of our users are at
                    stake.
                  </p>
                </li>
              </ol>
              <h3>
                II. Support and Respect Each Other
              </h3>
              <ol type="A">
                <li>
                  <p>
                    Our principles
                  </p>
                  <p>
                    As part of Alphabet, Google has an unwavering
                    commitment to prohibiting and effectively
                    responding to harassment, discrimination,
                    misconduct, abusive conduct, and retaliation.
                    To that end, Google adheres to these Guiding
                    Principles:
                  </p>
                  <p>
                    Commitment: Google sets a tone at the top of
                    commitment to a respectful, safe, and inclusive
                    working environment for all employees and
                    members of the extended workforce.
                  </p>
                  <p>
                    Care: Google creates an environment with an
                    emphasis on respect for each individual at all
                    levels of the organization, including
                    specifically by offering assistance and showing
                    empathy to employees and members of the
                    extended workforce throughout and after the
                    complaint process.
                  </p>
                  <p>
                    Transparency: Google is open and transparent as
                    an organization regarding the frequency with
                    which complaints arise regarding harassment,
                    discrimination, misconduct, abusive conduct,
                    and retaliation, and the Company’s approach to
                    investigating and responding to those
                    allegations.
                  </p>
                  <p>
                    Fairness &amp; Consistency: Google ensures that
                    individuals are treated respectfully, fairly,
                    and compassionately in all aspects of Alphabet
                    interactions and applies policies, procedures,
                    and outcomes consistently regardless of who is
                    involved.
                  </p>
                  <p>
                    Accountability: Google holds all individuals
                    responsible for their actions, and ensures that
                    where appropriate, those individuals hold
                    others accountable too.
                  </p>
                </li>
              </ol>
              <ol type="A" start="2">
                <li>
                  <p>
                    Our practice
                  </p>
                  <p>
                    Consistent with the Principles, Googlers are
                    expected to do their utmost to create a
                    supportive work environment, where everyone has
                    the opportunity to reach their fullest
                    potential, and be free from harassment,
                    intimidation, bias, and unlawful
                    discrimination.
                  </p>
                  <p>
                    Please read the Employee Handbook relevant to
                    your locale. Located in the Human Resources
                    section of our internal corporate site, the
                    Handbook covers in greater detail how we should
                    conduct ourselves at work.
                  </p>
                </li>
              </ol>
              <ol>
                <li>
                  <h3>
                    Equal Opportunity Employment
                  </h3>
                  <p>
                    Employment here is based solely upon individual
                    merit and qualifications directly related to
                    professional competence. We strictly prohibit
                    unlawful discrimination or harassment on the
                    basis of race, color, religion, veteran status,
                    national origin, ancestry, pregnancy status,
                    sex, gender identity or expression, age,
                    marital status, mental or physical disability,
                    medical condition, sexual orientation, or any
                    other characteristics protected by law. We also
                    make all reasonable accommodations to meet our
                    obligations under laws protecting the rights of
                    the disabled.
                  </p>
                </li>
                <li>
                  <h3>
                    Harassment, Discrimination, and Bullying
                  </h3>
                  <p>
                    Google prohibits discrimination, harassment and
                    bullying in any form – verbal, physical, or
                    visual, as discussed more fully in our Policy
                    Against Discrimination, Harassment and
                    Retaliation. If you believe you’ve been
                    bullied, harassed, or discriminated against by
                    anyone at Google, or by a Google partner or
                    vendor, we strongly encourage you to
                    immediately report the incident to your
                    supervisor, Human Resources or both. Similarly,
                    supervisors and managers who learn of any such
                    incident should immediately report it to Human
                    Resources. Human Resources will promptly and
                    thoroughly investigate any complaints and take
                    appropriate action.
                  </p>
                </li>
                <li>
                  <h3>
                    Drugs and Alcohol
                  </h3>
                  <p>
                    Our position on substance abuse is simple: It
                    is incompatible with the health and safety of
                    our employees, and we don’t permit it.
                    Consumption of alcohol is not banned at our
                    offices, but use good judgment and never drink
                    in a way that leads to impaired performance or
                    inappropriate behavior, endangers the safety of
                    others, or violates the law. Illegal drugs in
                    our offices or at sponsored events are strictly
                    prohibited. If a manager has reasonable
                    suspicion to believe that an employee’s use of
                    drugs and/or alcohol may adversely affect the
                    employee’s job performance or the safety of the
                    employee or others in the workplace, the
                    manager may request an alcohol and/or drug
                    screening. A reasonable suspicion may be based
                    on objective symptoms such as the employee’s
                    appearance, behavior, or speech.
                  </p>
                </li>
                <li>
                  <h3>
                    Safe and Healthy Workplace
                  </h3>
                  <p>
                    We are committed to a safe, healthy, and
                    violence-free work environment. Behavior that
                    poses risk to the safety, health, or security
                    of Googlers, our extended workforce, or
                    visitors is prohibited. If you become aware of
                    a risk to the safety, health, or security of
                    our workplace, you should report it to Google
                    Security immediately. If it is life-threatening
                    or an emergency, call your local police, fire,
                    or other emergency responders first, and then
                    report it to Google Security.
                  </p>
                </li>
                <li>
                  <h3>
                    Dog Policy
                  </h3>
                  <p>
                    Google’s affection for our canine friends is an
                    integral facet of our corporate culture. We
                    like cats, but we’re a dog company, so as a
                    general rule we feel cats visiting our offices
                    would be fairly stressed out. However, before
                    bringing your canine companion to the office,
                    please make sure you review our Dog Policy.
                  </p>
                </li>
              </ol>
              <h3>
                III. Avoid Conflicts of Interest
              </h3>
              <p>
                When you are in a situation in which competing
                loyalties could cause you to pursue a personal
                benefit for you, your friends, or your family at
                the expense of Google or our users, you may be
                faced with a conflict of interest. All of us should
                avoid conflicts of interest and circumstances that
                reasonably present the appearance of a conflict.
              </p>
              <p>
                When considering a course of action, ask yourself
                whether the action you’re considering could create
                an incentive for you, or appear to others to create
                an incentive for you, to benefit yourself, your
                friends or family, or an associated business at the
                expense of Google.If the answer is “yes,” the
                action you’re considering is likely to create a
                conflict of interest situation, and you should
                avoid it.
              </p>
              <p>
                Below, we provide guidance in seven areas where
                conflicts of interest often arise:
              </p>
              <ul>
                <li>Personal investments
                </li>
                <li>Outside employment, advisory roles, board
                seats, and starting your own business
                </li>
                <li>Business opportunities found through work
                </li>
                <li>Inventions
                </li>
                <li>Friends and relatives; co-worker relationships
                </li>
                <li>Accepting gifts, entertainment, and other
                business courtesies
                </li>
                <li>Use of Google products and services
                </li>
              </ul>
              <p>
                In each of these situations, the rule is the same –
                if you are considering entering into a business
                situation that creates a conflict of interest,
                don’t. If you are in a business situation that may
                create a conflict of interest, or the appearance of
                a conflict of interest, review the situation with
                your manager and Ethics &amp; Compliance. Finally, it’s
                important to understand that as circumstances
                change, a situation that previously didn’t present
                a conflict of interest may present one.
              </p>
              <ol>
                <li>
                  <h3>
                    Personal Investments
                  </h3>
                  <p>
                    Avoid making personal investments in companies
                    that are Google competitors or business
                    partners when the investment might cause, or
                    appear to cause, you to act in a way that could
                    harm Google.
                  </p>
                  <p>
                    When determining whether a personal investment
                    creates a conflict of interest, consider the
                    relationship between the business of the
                    outside company, Google’s business, and what
                    you do at Google, including whether the company
                    has a business relationship with Google that
                    you can influence, and the extent to which the
                    company competes with Google. You should also
                    consider 1) any overlap between your specific
                    role at Google and the company’s business, 2)
                    the significance of the investment, including
                    the size of the investment in relation to your
                    net worth, 3) whether the investment is in a
                    public or private company, 4) your ownership
                    percentage of the company, and 5) the extent to
                    which the investment gives you the ability to
                    manage and control the company.
                  </p>
                  <p>
                    Investments in venture capital or other similar
                    funds that invest in a broad cross-section of
                    companies that may include Google competitors
                    or business partners generally do not create
                    conflicts of interest. However, a conflict of
                    interest may exist if you control the fund’s
                    investment activity.
                  </p>
                </li>
                <li>
                  <h3>
                    Outside Employment, Advisory Roles, Board
                    Seats, and Starting Your Own Business
                  </h3>
                  <p>
                    Avoid accepting employment, advisory positions,
                    or board seats with Google competitors or
                    business partners when your judgment could be,
                    or could appear to be, influenced in a way that
                    could harm Google. Additionally, because board
                    seats come with fiduciary obligations that can
                    make them particularly tricky from a conflict
                    of interest perspective, you should notify your
                    manager before accepting a board seat with any
                    outside company. Google board members and
                    employees who are VP and above should also
                    notify Ethics &amp; Compliance. Finally, do not
                    start your own business if it will compete with
                    Google.
                  </p>
                </li>
                <li>
                  <h3>
                    Business Opportunities Found Through Work
                  </h3>
                  <p>
                    Business opportunities discovered through your
                    work here belong first to Google, except as
                    otherwise agreed to by Google.
                  </p>
                </li>
                <li>
                  <h3>
                    Inventions
                  </h3>
                  <p>
                    Developing or helping to develop outside
                    inventions that a) relate to Google’s existing
                    or reasonably anticipated products and
                    services, b) relate to your position at Google,
                    or c) are developed using Google corporate
                    resources may create conflicts of interest and
                    be subject to the provisions of Google’s
                    Confidential Information and Invention
                    Assignment Agreement and other employment
                    agreements. If you have any questions about
                    potential conflicts or intellectual property
                    ownership involving an outside invention or
                    other intellectual property, consult Ethics &amp;
                    Compliance or Legal.
                  </p>
                </li>
                <li>
                  <h3>
                    Personal Relationships at Work
                  </h3>
                  <p>
                    Certain relationships within Google may
                    compromise or be seen to compromise your
                    ability to perform your job responsibilities,
                    may create uncomfortable or conflicted
                    positions, and may raise issues of fairness,
                    favoritism, or harassment. Therefore, be
                    mindful of how your relationships within Google
                    could impact or be perceived by others.
                    Romantic, physical or familial relationships
                    are not permitted between a Googler and another
                    Googler or member of the extended workforce
                    where one individual is in a position to
                    exercise authority or supervision over the
                    other. This prohibition includes any situation
                    where one person is in the reporting line of
                    the other, or, for example, a situation where
                    one person is a project or a technical lead on
                    a project on which the other person is working.
                    For more information, see the Policy on
                    Personal Relationships at Work.
                  </p>
                </li>
                <li>
                  <h3>
                    Accepting Gifts, Entertainment, and Other
                    Business Courtesies
                  </h3>
                  <p>
                    Accepting gifts, entertainment, and other
                    business courtesies from a Google competitor or
                    business partner can easily create the
                    appearance of a conflict of interest,
                    especially if the value of the item is
                    significant. Google’s Non-Government Related
                    Gifts &amp; Client Entertainment Policy provides
                    specific guidance on when it is appropriate for
                    Googlers to accept gifts, entertainment, or any
                    other business courtesy (including discounts or
                    benefits that are not made available to all
                    Googlers) from any of our competitors or
                    business partners.
                  </p>
                  <p>
                    Generally, acceptance of inexpensive “token”
                    non-cash gifts is permissible. In addition,
                    infrequent and moderate business meals and
                    entertainment with clients and infrequent
                    invitations to attend local sporting events and
                    celebratory meals with clients can be
                    appropriate aspects of many Google business
                    relationships, provided that they aren’t
                    excessive and don’t create the appearance of
                    impropriety. Before accepting any gift or
                    courtesy, consult the Non-Government Related
                    Gifts &amp; Client Entertainment Policy, and be
                    aware that you may need to obtain manager
                    approval.
                  </p>
                  <p>
                    Contact Ethics &amp; Compliance if you have any
                    questions. See the discussion of Anti-Bribery
                    Laws in Section VII(d) for guidance on when it
                    is appropriate to give gifts and business
                    courtesies in the course of doing Google
                    business.
                  </p>
                </li>
                <li>
                  <h3>
                    Use of Google Products and Services
                  </h3>
                  <p>
                    Avoiding potential conflicts of interest also
                    means that you should not use Google products,
                    services, internal tools, or information in a
                    way that improperly benefits you or someone you
                    know or creates the appearance that you have an
                    unfair advantage over users outside of Google.
                    For example, you should never approve Google
                    accounts, services, or credits for yourself,
                    your friends, or family members. Similarly, you
                    should not use the tools, information, or
                    access that you have as a Googler to
                    participate in or to generate a financial
                    benefit for yourself or others from invalid ad
                    traffic (IVT) on Google products, such as
                    generating IVT, purchasing or selling IVT
                    (except for the purposes of company sanctioned
                    research), or linking to (or appearing to link
                    to) business partners that may be engaging in
                    IVT. If you find yourself subject to a conflict
                    of interest regarding the use of Google’s
                    products, services, tools, or information,
                    discuss the situation with your manager, Legal,
                    or Ethics &amp; Compliance.
                  </p>
                </li>
                <li>
                  <h3>
                    Reporting
                  </h3>
                  <p>
                    Ethics &amp; Compliance will periodically report to
                    the Google Compliance Steering Committee all
                    matters involving Google officers – VPs and
                    above – approved under this section of the
                    Code, and will periodically report to the
                    Google Nominating and Corporate Governance
                    Committee all matters involving Google
                    executive officers and Board members approved
                    under this section.
                  </p>
                </li>
              </ol>
              <h3>
                IV. Preserve Confidentiality
              </h3>
              <p>
                We get a lot of press attention around our
                innovations and our culture, and that’s usually
                fine. However, certain kinds of company
                information, if leaked prematurely into the press
                or to competitors, can hurt our product launches,
                eliminate our competitive advantage and prove
                costly in other ways. Our responsibilities extend
                beyond not revealing Confidential Google material –
                we must also:
              </p>
              <ul>
                <li>properly secure, label, and (when appropriate)
                dispose of Confidential Google material;
                </li>
                <li>safeguard Confidential information that Google
                receives from others under non-disclosure
                agreements;
                </li>
                <li>take steps to keep our trade secrets and other
                confidential intellectual property secret.
                </li>
              </ul>
              <ol>
                <li>
                  <h3>
                    Confidential Information
                  </h3>
                  <p>
                    Make sure that information that is classified
                    as “Need to Know” or “Confidential” in Google’s
                    Data Classification Guidelines is handled in
                    accordance with those Guidelines and Google’s
                    Data Security Policy. At times, a particular
                    project or negotiation may require you to
                    disclose Need to Know or Confidential
                    information to an outside party: Disclosure of
                    that information should be on an “only as
                    needed” basis and only under a non-disclosure
                    agreement. In addition, Google policy may
                    require a prior security assessment of the
                    outside party that is to receive the
                    confidential information. Be sure to conduct
                    the appropriate due diligence and have the
                    appropriate agreement in place before you
                    disclose the information.
                  </p>
                  <p>
                    There are, of course, “gray areas” in which you
                    will need to apply your best judgment in making
                    sure you don’t disclose any confidential
                    information. Suppose a friend who works at a
                    non-profit organization asks you informally how
                    to improve the Google search ranking of the
                    group’s website: Giving your friend
                    site-optimization tips available in public
                    articles and on websites isn’t likely to be a
                    problem, but giving tips that aren’t publicly
                    known definitely would be. If you’re in a gray
                    area, be cautious in what advice or insight you
                    provide or, better yet, ask for guidance from
                    Ethics &amp; Compliance.
                  </p>
                  <p>
                    And don’t forget about pictures you and your
                    guests take at Google – it is up to you to be
                    sure that those pictures don’t disclose
                    confidential information.
                  </p>
                  <p>
                    Finally, some of us will find ourselves having
                    family or other personal relationships with
                    people employed by our competitors or business
                    partners. As in most cases, common sense
                    applies. Don’t tell your significant other or
                    family members anything confidential, and don’t
                    solicit confidential information from them
                    about their company.
                  </p>
                </li>
                <li>
                  <h3>
                    Google Partners
                  </h3>
                  <p>
                    Just as you are careful not to disclose
                    confidential Google information, it’s equally
                    important not to disclose any confidential
                    information from our partners. Don’t accept
                    confidential information from other companies
                    without first having all parties sign an
                    appropriate Non-disclosure Agreement approved
                    by Legal. Even after the agreement is signed,
                    try only to accept as much information as you
                    need to accomplish your business objectives.
                  </p>
                </li>
                <li>
                  <h3>
                    Alphabet and “Other Bet” data
                  </h3>
                  <p>
                    Be sure to protect confidential information of
                    Alphabet or of any Alphabet or Google
                    subsidiary or affiliate (“Alphabet companies”).
                    You may have access to confidential information
                    through collaborations, rotations, 20% projects
                    with another Alphabet company, access to
                    Alphabet buildings or networks, or simply
                    through casual interactions. Don’t access or
                    use confidential information of other Alphabet
                    companies except when authorized and reasonably
                    necessary for valid business purposes within
                    the scope of your work at Google. Take all
                    reasonable steps to maintain the
                    confidentiality of any such information just as
                    you would for Google confidential information.
                  </p>
                  <p>
                    Don’t disclose any confidential information
                    about any Alphabet company, including
                    financial, partner, business, technical, or IP
                    information, before obtaining appropriate
                    sign-off from Legal, which may include getting
                    consent from affected Alphabet companies.
                  </p>
                </li>
                <li>
                  <h3>
                    Competitors/Former Employers
                  </h3>
                  <p>
                    We respect our competitors and want to compete
                    with them fairly. But we don’t want their
                    confidential information. The same goes for
                    confidential information belonging to any
                    Googler’s former employers. If an opportunity
                    arises to take advantage of a competitor’s or
                    former employer’s confidential information,
                    don’t do it. Should you happen to come into
                    possession of a competitor’s confidential
                    information, contact Legal immediately.
                  </p>
                </li>
                <li>
                  <h3>
                    Outside Communications
                  </h3>
                  <p>
                    You probably know that our policy is to be
                    extremely careful about disclosing confidential
                    proprietary information. Consistent with that,
                    you should also ensure your outside
                    communications (including online and social
                    media posts) do not disclose confidential
                    proprietary information or represent (or
                    otherwise give the impression) that you are
                    speaking on behalf of Google unless you’re
                    authorized to do so by the company. The same
                    applies to communications with the press.
                    Finally, check with your manager and Corporate
                    Communications before accepting any public
                    speaking engagement on behalf of the company.
                    In general, before making any external
                    communication or disclosure, you should consult
                    our Employee Communications Policy and our
                    Communications and Disclosure Policy.
                  </p>
                </li>
              </ol>
              <h3>
                V. Protect Google’s Assets
              </h3>
              <p>
                Google has a well-earned reputation for generosity
                with our employee benefits and openness with
                confidential information shared within the company.
                Our ability to continue these practices depends on
                how well we conserve company resources and protect
                company assets and information.
              </p>
              <ol>
                <li>
                  <h3>
                    Intellectual Property
                  </h3>
                  <p>
                    Google’s intellectual property rights (our
                    trademarks, logos, copyrights, trade secrets,
                    “know-how”, and patents) are among our most
                    valuable assets. Unauthorized use can lead to
                    their loss or serious loss of value. You must
                    respect all copyright and other intellectual
                    property laws, including laws governing the
                    fair use of copyrights, trademarks, and brands.
                    You must never use Google’s (or its affiliated
                    entities’) logos, marks, or other protected
                    information or property for any business or
                    commercial venture without pre-clearance from
                    the Marketing Team. We strongly encourage you
                    to report any suspected misuse of trademarks,
                    logos, or other Google intellectual property to
                    Legal.
                  </p>
                  <p>
                    Likewise, respect the intellectual property
                    rights of others. Inappropriate use of others’
                    intellectual property may expose Google and you
                    to criminal and civil fines and penalties.
                    Please seek advice from Legal before you
                    solicit, accept, or use proprietary information
                    from individuals outside the company or let
                    them use or have access to Google proprietary
                    information. You should also check with Legal
                    if developing a product that uses content not
                    belonging to Google.
                  </p>
                  <p>
                    A word about open source – Google is committed
                    to open source software development. Consistent
                    with our policy of respecting the valid
                    intellectual property rights of others, we
                    strictly comply with the license requirements
                    under which open source software is
                    distributed. Failing to do so may lead to legal
                    claims against Google, as well as significant
                    damage to the company’s reputation and its
                    standing in the open source community. Please
                    seek guidance from Legal and the Open Source
                    Programs Office before incorporating open
                    source code into any Google product, service,
                    or internal project.
                  </p>
                </li>
                <li>
                  <h3>
                    Company Equipment
                  </h3>
                  <p>
                    Google gives us the tools and equipment we need
                    to do our jobs effectively, but counts on us to
                    be responsible and not wasteful with the Google
                    stuff we are given. Nobody’s going to complain
                    if you snag an extra bagel on Friday morning,
                    but company funds, equipment, and other
                    physical assets are not to be requisitioned for
                    purely personal use. Not sure if a certain use
                    of company assets is okay? Please ask your
                    manager or Human Resources.
                  </p>
                </li>
                <li>
                  <h3>
                    The Network
                  </h3>
                  <p>
                    Google’s communication facilities (which
                    include both our network and the hardware that
                    uses it, like computers and mobile devices) are
                    a critical aspect of our company’s property,
                    both physical and intellectual. Be sure to
                    follow all security policies. If you have any
                    reason to believe that our network security has
                    been violated – for example, you lose your
                    laptop or smart phone or think that your
                    network password may have been compromised –
                    please promptly report the incident to
                    Information Security. For more information,
                    consult Google's Security Policy.
                  </p>
                </li>
                <li>
                  <h3>
                    Physical Security
                  </h3>
                  <p>
                    If you’re not careful, people may steal your
                    stuff. Always secure your laptop, important
                    equipment, and your personal belongings, even
                    while on Google’s premises. Always wear your
                    badge visibly while on site. Don’t tamper with
                    or disable security and safety devices. If you
                    see someone in a secure space without a badge,
                    report that, and any other suspicious activity,
                    to Google Security. For more information,
                    review Google’s Physical Security Policy.
                  </p>
                </li>
                <li>
                  <h3>
                    Use of Google’s Equipment and Facilities
                  </h3>
                  <p>
                    Anything you do using Google’s corporate
                    electronic facilities (e.g., our computers,
                    mobile devices, network, etc.) or store on our
                    premises (e.g., letters, memos, and other
                    documents) might be disclosed to people inside
                    and outside the company. For example, Google
                    may be required by law (e.g., in response to a
                    subpoena or warrant) to monitor, access, and
                    disclose the contents of corporate email,
                    voicemail, computer files, and other materials
                    on our electronic facilities or on our
                    premises. In addition, the company may monitor,
                    access, and disclose employee communications
                    and other information on our corporate
                    electronic facilities or on our premises where
                    there is a business need to do so, such as
                    protecting employees and users, maintaining the
                    security of resources and property, or
                    investigating suspected employee misconduct.
                  </p>
                </li>
                <li>
                  <h3>
                    Employee Data
                  </h3>
                  <p>
                    We collect and store personal information from
                    employees around the world. Access this data
                    only in line with local law and Google internal
                    policies, and be sure to handle employee data
                    in a manner that is consistent with Google’s
                    Data Classification and Employment Data
                    Guidelines and other Google policies.
                  </p>
                </li>
              </ol>
              <h3>
                VI. Ensure Financial Integrity and Responsibility
              </h3>
              <p>
                Financial integrity and fiscal responsibility are
                core aspects of corporate professionalism. This is
                more than accurate reporting of our financials,
                though that’s certainly important. The money we
                spend on behalf of Google is not ours; it’s the
                company’s and, ultimately, our shareholders’. Each
                person at Google – not just those in Finance – has
                a role in making sure that money is appropriately
                spent, our financial records are complete and
                accurate, and internal controls are honored. This
                matters every time we hire a new vendor, expense
                something to Google, sign a new business contract,
                or enter into any deals on Google’s behalf.
              </p>
              <p>
                To make sure that we get this right, Google
                maintains a system of internal controls to
                reinforce our compliance with legal, accounting,
                tax, and other regulatory requirements in every
                location in which we operate.
              </p>
              <p>
                Stay in full compliance with our system of internal
                controls, and don’t hesitate to contact Ethics &amp;
                Compliance or Finance if you have any questions.
                What follows are some core concepts that lie at the
                foundation of financial integrity and fiscal
                responsibility here at Google.
              </p>
              <ol>
                <li>
                  <h3>
                    Spending Google’s Money
                  </h3>
                  <p>
                    A core Google value has always been to spend
                    money wisely. When you submit an expense for
                    reimbursement or spend money on Google’s
                    behalf, make sure that the cost is reasonable,
                    directly related to company business, and
                    supported by appropriate documentation. Always
                    record the business purpose (e.g., if you take
                    someone out to dinner on Google, always record
                    in our expense reimbursement tool the full
                    names and titles of the people who attended as
                    well as the reason for the dinner) and comply
                    with other submission requirements. If you’re
                    uncertain about whether you should spend money
                    or submit an expense for reimbursement, check
                    with your manager. Managers are responsible for
                    all money spent and expenses incurred by their
                    direct reports, and should carefully review
                    such spend and expenses before approving.
                  </p>
                </li>
                <li>
                  <h3>
                    Signing a Contract
                  </h3>
                  <p>
                    Each time you enter into a business transaction
                    on Google’s behalf, there should be
                    documentation recording that agreement,
                    approved by the Legal Department. Signing a
                    contract on behalf of Google is a very big
                    deal. Never sign any contract on behalf of
                    Google unless all of the following are met:
                  </p>
                  <ul>
                    <li>You are authorized to do so under our
                    Signature Authority and Approval Policy. If you
                    are unsure whether you are authorized, ask your
                    manager
                    </li>
                    <li>The contract has been approved by Legal. If
                    you are using an approved Google form contract,
                    you don’t need further Legal approval unless
                    you have made changes to the form contract or
                    are using it for other than its intended
                    purpose
                    </li>
                    <li>You have studied the contract, understood
                    its terms and decided that entering into the
                    contract is in Google’s interest
                    </li>
                  </ul>
                  <p>
                    All contracts at Google should be in writing
                    and should contain all of the relevant terms to
                    which the parties are agreeing – Google does
                    not permit “side agreements,” oral or written.
                  </p>
                </li>
                <li>
                  <h3>
                    Recording Transactions
                  </h3>
                  <p>
                    If your job involves the financial recording of
                    our transactions, make sure that you’re fully
                    familiar with all of the Google policies that
                    apply, including our Revenue Recognition Policy
                    and our Purchasing Policy.
                  </p>
                  <p>
                    Immediately report to Finance any transactions
                    that you think are not being recorded
                    correctly.
                  </p>
                </li>
                <li>
                  <h3>
                    Reporting Financial or Accounting
                    Irregularities
                  </h3>
                  <p>
                    It goes without saying (but we’re going to say
                    it anyway) that you should never, ever
                    interfere in any way with the auditing of
                    Google’s financial records. Similarly, you
                    should never falsify any record or account,
                    including time reports, expense accounts, and
                    any other Google records.
                  </p>
                  <p>
                    Familiarize yourself with our Reporting of
                    Financial and Accounting Concerns Policy. If
                    you suspect or observe any of the conduct
                    mentioned above or, for that matter, any
                    irregularities relating to financial integrity
                    or fiscal responsibility, no matter how small,
                    immediately report them to Ethics &amp; Compliance.
                  </p>
                </li>
                <li>
                  <h3>
                    Hiring Suppliers
                  </h3>
                  <p>
                    As Google grows, we enter into more and more
                    deals with suppliers of equipment and services.
                    We should always strive for the best possible
                    deal for Google. This almost always requires
                    that you solicit competing bids to make sure
                    that you’re getting the best offer. While price
                    is very important, it isn’t the only factor
                    worth considering. Quality, service,
                    reliability, and the terms and conditions of
                    the proposed deal may also affect the final
                    decision. Please do not hesitate to contact the
                    Purchasing Team if you have any questions
                    regarding how to procure equipment or services.
                  </p>
                </li>
                <li>
                  <h3>
                    Retaining Records
                  </h3>
                  <p>
                    It’s important that we keep records for an
                    appropriate length of time. The Google Records
                    Retention Policy suggests minimum record
                    retention periods for certain types of records.
                    These are great guidelines, but keep in mind
                    that legal requirements, accounting rules, and
                    other external sources sometimes specify longer
                    retention periods for certain types of records,
                    and those control where applicable. In
                    addition, if asked by Legal to retain records
                    relevant to a litigation, audit, or
                    investigation, do so until Legal tells you
                    retention is no longer necessary. If you have
                    any questions regarding the correct length of
                    time to retain a record, contact the Records
                    Retention Team.
                  </p>
                </li>
              </ol>
              <h3>
                VII. Obey the Law
              </h3>
              <p>
                Google takes its responsibilities to comply with
                laws and regulations very seriously and each of us
                is expected to comply with applicable legal
                requirements and prohibitions. While it’s
                impossible for anyone to know all aspects of every
                applicable law, you should understand the major
                laws and regulations that apply to your work. Take
                advantage of Legal and Ethics &amp; Compliance to
                assist you here. A few specific laws are easy to
                violate unintentionally and so are worth pointing
                out here:
              </p>
              <ol>
                <li>
                  <h3>
                    Trade Controls
                  </h3>
                  <p>
                    U.S. and international trade laws control where
                    Google can send or receive its products and/or
                    services. These laws are complex, and apply to:
                  </p>
                  <ul>
                    <li>imports and exports from or into the U.S.
                    </li>
                    <li>imports and exports of products from or
                    into other countries, with additional concerns
                    when those products contain components or
                    technology of U.S. origin
                    </li>
                    <li>exports of services or providing services
                    to non-U.S. persons
                    </li>
                    <li>exports of technical data, especially when
                    the technical data is of U.S. origin
                    </li>
                  </ul>
                  <p>
                    What constitutes an “import” or “export” under
                    the law is pretty broad. For example:
                  </p>
                  <ul>
                    <li>exposing or allowing access by non-U.S.
                    persons to U.S. technical data can be an
                    “export”, regardless of what country the
                    exposure occurred in
                    </li>
                    <li>sending a server from one country (“country
                    X”) into another country (“country Y”) is an
                    export from country X and an import into
                    country Y
                    </li>
                    <li>permitting the download of software from
                    one country (“country X”) into another country
                    (“country Y”) is an export from country X
                    </li>
                    <li>transporting technical data or software on
                    your laptop, or tools or equipment in your
                    luggage, may be an export and import
                    </li>
                  </ul>
                  <p>
                    The bottom line: If you are in any way involved
                    in sending or making available Google products,
                    services, software, equipment, or any form of
                    technical data from one country to another,
                    work with your manager to be absolutely sure
                    that the transaction stays well within the
                    bounds of applicable laws. If you or your
                    manager are not sure, please contact Ethics &amp;
                    Compliance.
                  </p>
                </li>
                <li>
                  <h3>
                    Competition Laws
                  </h3>
                  <p>
                    Most countries have laws – known as
                    “antitrust,” “competition,” or “unfair
                    competition” laws – designed to promote free
                    and fair competition. Generally speaking, these
                    laws prohibit 1) arrangements with competitors
                    that restrain trade in some way, 2) abuse of
                    intellectual property rights, and 3) use of
                    market power to unfairly disadvantage
                    competitors.
                  </p>
                  <p>
                    Certain conduct is absolutely prohibited under
                    these laws, and could result in your
                    imprisonment, not to mention severe penalties
                    for Google.
                  </p>
                  <p>
                    Examples of prohibited conduct include:
                  </p>
                  <ul>
                    <li>agreeing with competitors about prices
                    </li>
                    <li>agreeing with competitors to rig bids or to
                    allocate customers or markets
                    </li>
                    <li>agreeing with competitors to boycott a
                    supplier or customer
                    </li>
                  </ul>
                  <p>
                    Other activities can also be illegal, unfair,
                    or create the appearance of impropriety. Such
                    activities include:
                  </p>
                  <ul>
                    <li>sharing competitively sensitive information
                    (e.g., prices, costs, market distribution,
                    etc.) with competitors
                    </li>
                    <li>entering into a business arrangement or
                    pursuing a strategy with the sole purpose of
                    harming a competitor
                    </li>
                    <li>using Google’s size or strength to gain an
                    unfair competitive advantage
                    </li>
                  </ul>
                  <p>
                    Although the spirit of these laws is
                    straightforward, their application to
                    particular situations can be quite complex.
                  </p>
                  <p>
                    Google is committed to competing fair and
                    square, so please contact Ethics &amp; Compliance
                    if you have any questions about the antitrust
                    laws and how they apply to you. Any personnel
                    found to have violated Google’s Antitrust
                    Policies will, subject to local laws, be
                    disciplined, up to and including termination of
                    employment. If you suspect that anyone at the
                    company is violating the competition laws,
                    notify Ethics &amp; Compliance immediately.
                  </p>
                </li>
                <li>
                  <h3>
                    Insider Trading Laws
                  </h3>
                  <p>
                    As we said earlier, internally we share
                    information, including non-public information,
                    about Google’s business operations pretty
                    freely (think of TGIF). In addition, you may
                    overhear a hallway conversation or come across
                    a memo at a copy machine, either of which might
                    involve confidential information. To use this
                    non-public information to buy or sell stock, or
                    to pass it along to others so that they may do
                    so, could constitute insider trading. Insider
                    trading not only violates this Code, it
                    violates the law. Don’t do it.
                  </p>
                  <p>
                    You should familiarize yourself with Google’s
                    Insider Trading Policy. It describes
                    company-wide policies that address the risks of
                    insider trading, such as a prohibition on any
                    Google employee hedging Google stock; and
                    periodic blackout windows when no Google
                    employee may trade Google stock.
                  </p>
                </li>
                <li>
                  <h3>
                    Anti-bribery Laws
                  </h3>
                  <p>
                    Like all businesses, Google is subject to lots
                    of laws, both U.S. and non-U.S., that prohibit
                    bribery in virtually every kind of commercial
                    setting. The rule for us at Google is simple –
                    don’t bribe anybody, anytime, for any reason.
                  </p>
                </li>
                <li>
                  <h3>
                    Non-government relationships
                  </h3>
                  <p>
                    You should be careful when you give gifts and
                    pay for meals, entertainment, or other business
                    courtesies on behalf of Google. We want to
                    avoid the possibility that the gift,
                    entertainment, or other business courtesy could
                    be perceived as a bribe, so it’s always best to
                    provide such business courtesies infrequently
                    and, when we do, to keep their value moderate.
                    Consult Google’s Non-Government Related Gifts
                    and Client Entertainment Policy before
                    providing any business courtesies and contact
                    Ethics &amp; Compliance if you have any questions.
                  </p>
                </li>
                <li>
                  <h3>
                    Dealing with government officials
                  </h3>
                  <p>
                    Offering gifts, entertainment, or other
                    business courtesies that could be perceived as
                    bribes becomes especially problematic if you’re
                    dealing with a government official. “Government
                    officials” include any government employee;
                    candidate for public office; or employee of
                    government-owned or -controlled companies,
                    public international organizations, or
                    political parties. Several laws around the
                    world, including the U.S. Foreign Corrupt
                    Practices Act and the UK Bribery Act,
                    specifically prohibit offering or giving
                    anything of value to government officials to
                    influence official action or to secure an
                    improper advantage. This not only includes
                    traditional gifts, but also things like meals,
                    travel, political or charitable contributions,
                    and job offers for government officials’
                    relatives. Never give gifts to thank government
                    officials for doing their jobs. By contrast, it
                    can be permissible to make infrequent and
                    moderate expenditures for gifts and business
                    entertainment for government officials that are
                    directly tied to promoting our products or
                    services (e.g., providing a modest meal at a
                    day-long demonstration of Google products).
                    Payment of such expenses can be acceptable
                    (assuming they are permitted under local law)
                    but may require pre-approval from Ethics &amp;
                    Compliance under Google’s Anti-Bribery and
                    Government Ethics Policy.
                  </p>
                  <p>
                    The U.S. also has strict rules that severely
                    limit the ability of a company or its employees
                    to give gifts and business courtesies to a U.S.
                    government official and also limit the
                    official’s ability to accept such gifts. The
                    Honest Leadership and Open Government Act
                    prohibits giving any gifts, including travel
                    and other courtesies, to Members, Officers, and
                    employees of the U.S. Senate and House of
                    Representatives unless they fit within one of a
                    number of specific exceptions. Gifts to
                    employees of the U.S. executive branch are also
                    regulated and subject to limits. Finally, state
                    and local government officials in the U.S. are
                    also subject to additional legal restrictions.
                    Consult Google’s Anti-Bribery and Government
                    Ethics Policy before giving any such gifts or
                    business courtesies and obtain all required
                    pre-approvals. In sum, before offering any
                    gifts or business courtesies to a U.S. or other
                    government official, you should consult
                    Google’s Anti-Bribery and Government Ethics
                    Policy. Carefully follow the limits and
                    prohibitions described there, and obtain any
                    required pre-approvals. If after consulting the
                    Policy you aren’t sure what to do, ask Ethics &amp;
                    Compliance.
                  </p>
                </li>
              </ol>
              <h3>
                VIII. Conclusion
              </h3>
              <p>
                Google aspires to be a different kind of company.
                It’s impossible to spell out every possible ethical
                scenario we might face. Instead, we rely on one
                another’s good judgment to uphold a high standard
                of integrity for ourselves and our company. We
                expect all Googlers to be guided by both the letter
                and the spirit of this Code. Sometimes, identifying
                the right thing to do isn’t an easy call. If you
                aren’t sure, don’t be afraid to ask questions of
                your manager, Legal or Ethics &amp; Compliance.
              </p>
              <p>
                And remember… don’t be evil, and if you see
                something that you think isn’t right – speak up!
              </p>
              <p>
                Last updated September 25, 2020
              </p>
              <!--<p class="back-to-top">
                <a href="/investor/other/google-code-of-conduct/#">Back to
                top</a>
              </p>-->
            </div>
          </section>
        </div>
      </div>
    </main>
    <footer class="site-footer"></footer>
  

</body>
""";
}
