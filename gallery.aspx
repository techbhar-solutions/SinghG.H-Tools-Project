<%@ Page Title="Gallery-Khalsa G.H Tools" Language="vb" AutoEventWireup="false" MasterPageFile="~/userpanelmaster.Master" CodeBehind="gallery.aspx.vb" Inherits="SinghGhToolsLDh.gallery" %>

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
                            <h1 class="heading-title">Gallery</h1>
                            <p class="mb-0">
                                Explore our gallery to see our expertise in precision tools, dies, molds, and
            manufacturing solutions. This section showcases our completed projects, advanced machinery, 
            production processes, and quality workmanship.From design and CNC machining to finished components,
            our gallery reflects our commitment to accuracy, innovation, and high-quality standards across various industries.
            Take a look at our work and experience the precision we deliver.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <nav class="breadcrumbs">
                <div class="container">
                    <ol>
                        <li><a href="Default.aspx">Home</a></li>
                        <li class="current">Gallery</li>
                    </ol>
                </div>
            </nav>
        </div>

        <!-- End Page Title -->


        <!-- gallery section start -->

        <section id="gallery" class="gallery section">



            <div class="container-fluid" data-aos="fade-up" data-aos-delay="100">
                <div class="row gy-4 justify-content-center">
                    <asp:Repeater ID="rptgallery" runat="server">
                        <ItemTemplate>
                            <div class="col-xl-3 col-lg-4 col-md-6">
                                <div class="gallery-item h-100">
                                    <img src='<%# ResolveUrl("~/AdminPanel/gallerypics/" + Eval("filename").ToString()) %>'
                                        class="img-fluid" alt='<%# Eval("caption") %>'>
                                    <div class="gallery-links d-flex align-items-center justify-content-center">
                                        <!-- preview -->
                                        <a href='<%# ResolveUrl("~/AdminPanel/gallerypics/" + Eval("filename").ToString()) %>'
                                            title='<%# Eval("caption") %>' class="glightbox preview-link">
                                            <i
                                                class="bi bi-arrows-angle-expand"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </section>

        <!-- Gallery Section End -->

    </main>
</asp:Content>
