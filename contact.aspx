<%@ Page Title="Contact-Khalsa G.H Tools" Language="vb" AutoEventWireup="false" MasterPageFile="~/userpanelmaster.Master" CodeBehind="contact.aspx.vb" Inherits="SinghGhToolsLDh.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="main">

        <!-- Page Title -->
        <div class="page-title">
            <div class="heading">
                <div class="container">
                    <div class="row d-flex justify-content-center text-center">
                        <div class="col-lg-12">
                            <h1 class="heading-title">Contact</h1>
                            <p class="mb-0">
                                Contact Us for High-Quality Tools & Die Solutions
                            Looking for reliable and precision-engineered tools and dies for your manufacturing needs?
                            Our expert team is ready to assist you with customized solutions for cutting tools, press tools,
                            molds, and die manufacturing. Whether you are in the automotive, aerospace, consumer goods, 
                            or medical industry, we provide high-quality design, development, and production services
                            using advanced CAD/CAM technology and CNC machining.
                            Get in touch with us today to discuss your project requirements. We are committed to delivering precision,
                            durability, and cost-effective manufacturing solutions that enhance your productivity and efficiency.
                            Let’s build precision together. Contact us now!
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <nav class="breadcrumbs">
                <div class="container">
                    <ol>
                        <li><a href="Default.aspx">Home</a></li>
                        <li class="current">Contact</li>
                    </ol>
                </div>
            </nav>
        </div>
        <!-- End Page Title -->

        <!-- Contact Section -->
        <section id="contact" class="contact section">

            <div class="container" data-aos="fade-up" data-aos-delay="100">
                <div class="row g-5">
                    <div class="col-lg-5">
                        <div class="contact-info-wrapper">
                            <div class="contact-info-item" data-aos="fade-up" data-aos-delay="100">
                                <div class="info-icon">
                                    <i class="bi bi-geo-alt"></i>
                                </div>
                                <div class="info-content">
                                    <h3>Our Address</h3>
                                    <p>#2747,st.no-4,new janta nagar,ATi Road, Ludhiana,Punjab-141003</p>
                                </div>
                            </div>

                            <div class="contact-info-item" data-aos="fade-up" data-aos-delay="200">
                                <div class="info-icon">
                                    <i class="bi bi-envelope"></i>
                                </div>
                                <div class="info-content">
                                    <h3>Email Address</h3>
                                    <p>Ghtools30@gmail.com</p>
                                   
                                </div>
                            </div>

                            <div class="contact-info-item" data-aos="fade-up" data-aos-delay="300">
                                <div class="info-icon">
                                    <i class="bi bi-headset"></i>
                                </div>
                                <div class="info-content">
                                    <h3>Hours of Working</h3>
                                    <p>Sunday-Fri: 9 AM - 6 PM</p>
                                    <p>Saturday: 9 AM - 4 PM</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-7">
                        <div class="contact-form-card" data-aos="fade-up" data-aos-delay="200">
                            <h2>Send us a Message</h2>
                            <p class="mb-4">
                                Have questions or want to learn more? Reach out to us and our team will get back to you
            shortly.
                            </p>

                            <div>
                                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">


                                    <ContentTemplate>

                                        <div class="row g-4">

                                            <!-- First Name -->
                                            <div class="col-md-6">
                                                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"
                                                    Placeholder="First Name"></asp:TextBox>

                                                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server"
                                                    ControlToValidate="txtFirstName"
                                                    ErrorMessage="First Name is required"
                                                    ForeColor="Red" Display="Dynamic" />
                                            </div>

                                            <!-- Last Name -->
                                            <div class="col-md-6">
                                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"
                                                    Placeholder="Last Name"></asp:TextBox>

                                                <asp:RequiredFieldValidator ID="rfvLastName" runat="server"
                                                    ControlToValidate="txtLastName"
                                                    ErrorMessage="Last Name is required"
                                                    ForeColor="Red" Display="Dynamic" />
                                            </div>

                                            <!-- Email -->
                                            <div class="col-md-6">
                                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"
                                                    Placeholder="Your Email" TextMode="Email"></asp:TextBox>

                                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                                                    ControlToValidate="txtEmail"
                                                    ErrorMessage="Email is required"
                                                    ForeColor="Red" Display="Dynamic" />

                                                <asp:RegularExpressionValidator ID="revEmail" runat="server"
                                                    ControlToValidate="txtEmail"
                                                    ValidationExpression="\w+([.-]?\w+)*@\w+([.-]?\w+)*\.\w{2,3}"
                                                    ErrorMessage="Enter valid email"
                                                    ForeColor="Red" Display="Dynamic" />
                                            </div>

                                            <!-- Phone -->
                                            <div class="col-md-6">
                                                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"
                                                    Placeholder="Your Phone Number"></asp:TextBox>

                                                <asp:RequiredFieldValidator ID="rfvPhone" runat="server"
                                                    ControlToValidate="txtPhone"
                                                    ErrorMessage="Phone number required"
                                                    ForeColor="Red" Display="Dynamic" />

                                                <asp:RegularExpressionValidator ID="revPhone" runat="server"
                                                    ControlToValidate="txtPhone"
                                                    ValidationExpression="^[0-9]{10}$"
                                                    ErrorMessage="Enter 10 digit number"
                                                    ForeColor="Red" Display="Dynamic" />
                                            </div>

                                            <!-- Message -->
                                            <div class="col-12">
                                                <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control"
                                                    Placeholder="Your Message" TextMode="MultiLine" Rows="6"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="rfvMessage" runat="server"
                                                    ControlToValidate="txtMessage"
                                                    ErrorMessage="Message is required"
                                                    ForeColor="Red" Display="Dynamic" />
                                            </div>

                                            <!-- Submit -->
                                            <div class="col-12">
                                                <asp:Button ID="btnSubmit" runat="server" Text="Send Message"
                                                    CssClass="btn btn-submit" />
                                            </div>

                                            <!-- Success Message -->
                                            <div class="col-12">
                                                <asp:Label ID="lblMsg" runat="server" ForeColor="Green"></asp:Label>
                                            </div>

                                        </div>

                                    </ContentTemplate>
                                </asp:UpdatePanel>




                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </section>
        <!-- /Contact Section -->


    </main>
</asp:Content>
