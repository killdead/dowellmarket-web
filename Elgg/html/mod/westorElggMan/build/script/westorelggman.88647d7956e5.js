qx.$$packageData['4']={"locales":{},"resources":{},"translations":{}};
qx.Part.$$notifyLoad("4", function() {
(function(){var s="html.classlist",r="default",q="native",p="",o=" ",n='',m="(^|\\s)",k="(\\s|$)",j="\\b",h="g",c='function',g="\\b|\\b",f="qx.bom.element.Class",b='SVGAnimatedString',a='object',e="$2",d='undefined';
qx.Class.define(f,{statics:{__bR:/\s+/g,__bS:/^\s+|\s+$/g,add:qx.lang.Object.select(qx.core.Environment.get(s)?q:r,{"native":function(t,name){t.classList.add(name);
return name;
},"default":function(u,name){if(!this.has(u,name)){u.className+=(u.className?o:p)+name;
}return name;
}}),addClasses:qx.lang.Object.select(qx.core.Environment.get(s)?q:r,{"native":function(v,w){for(var i=0;i<w.length;i++){v.classList.add(w[i]);
}return v.className;
},"default":function(x,y){var z={};
var B;
var A=x.className;

if(A){B=A.split(this.__bR);

for(var i=0,l=B.length;i<l;i++){z[B[i]]=true;
}
for(var i=0,l=y.length;i<l;i++){if(!z[y[i]]){B.push(y[i]);
}}}else{B=y;
}return x.className=B.join(o);
}}),get:function(C){var D=C.className;

if(typeof D.split!==c){if(typeof D===a){if(qx.Bootstrap.getClass(D)==b){D=D.baseVal;
}else{D=n;
}}
if(typeof D===d){D=n;
}}return D;
},has:qx.lang.Object.select(qx.core.Environment.get(s)?q:r,{"native":function(E,name){return E.classList.contains(name);
},"default":function(F,name){var G=new RegExp(m+name+k);
return G.test(F.className);
}}),remove:qx.lang.Object.select(qx.core.Environment.get(s)?q:r,{"native":function(H,name){H.classList.remove(name);
return name;
},"default":function(I,name){var J=new RegExp(m+name+k);
I.className=I.className.replace(J,e);
return name;
}}),removeClasses:qx.lang.Object.select(qx.core.Environment.get(s)?q:r,{"native":function(K,L){for(var i=0;i<L.length;i++){K.classList.remove(L[i]);
}return K.className;
},"default":function(M,N){var O=new RegExp(j+N.join(g)+j,h);
return M.className=M.className.replace(O,p).replace(this.__bS,p).replace(this.__bR,o);
}}),replace:function(P,Q,R){this.remove(P,Q);
return this.add(P,R);
},toggle:qx.lang.Object.select(qx.core.Environment.get(s)?q:r,{"native":function(S,name,T){if(T===undefined){S.classList.toggle(name);
}else{T?this.add(S,name):this.remove(S,name);
}return name;
},"default":function(U,name,V){if(V==null){V=!this.has(U,name);
}V?this.add(U,name):this.remove(U,name);
return name;
}})}});
})();
(function(){var k="verifyLine",j="verifyHelp",i="verifyInput",h="execute",g="restart",f="",d="numberLine",c="numberInput",b="numberHelp",a="verifySenderNumber",I="label",H="<strong>",G="statusLine",F="ready",E="buttonLine",D="sendNumber",C="</strong>.<br>",B="cancel",A="header",z="verifySend",r="headbox",s="numberSend",p="getData",q="sendCode",n="westorelggman/dialog-cancel.png",o="westorelggman/glass_numbers_2.png",l="activity",m="westorelggman/dialog-ok.png",t="</strong><br>",u="westorelggman/help-about.png",w="sms-window-verify",v="westorelggman/glass_numbers_1.png",y="westorelggman/edit-undo.png",x="westorelggman.SmsVerify";
qx.Class.define(x,{extend:westorelggman.elements.Window,construct:function(J){westorelggman.elements.Window.call(this);
this.__bW();
},properties:{appearance:{refine:true,init:w}},members:{__bW:function(){this.getChildControl(A);
this.getChildControl(r);
this.getChildControl(b);
this.getChildControl(d);
this.getChildControl(j);
this.getChildControl(k);
this.getChildControl(E);
},_createChildControlImpl:function(K){var L;

switch(K){case A:L=new qx.ui.basic.Atom(H+ElggMan_sms_confirm_helpHeaderH+t+ElggMan_sms_confirm_helpHeader);
L.getChildControl(I).set({rich:true,wrap:true});
this.add(L);
break;
case r:L=new qx.ui.container.Composite(new qx.ui.layout.HBox(10));
L.setAllowGrowX(true);
L.add(this.getChildControl(G));
L.add(this.getChildControl(l));
this.add(L);
break;
case b:L=new qx.ui.basic.Atom(H+ElggMan_sms_confirm_helpNumberH+C+ElggMan_sms_confirm_helpNumber,v);
L.getChildControl(I).set({rich:true,wrap:true});
this.add(L);
break;
case d:L=new qx.ui.container.Composite(new qx.ui.layout.HBox(10));
L.add(this.getChildControl(c));
L.add(this.getChildControl(s));
this.add(L);
break;
case c:L=new qx.ui.form.TextField();
L.setWidth(180);
break;
case s:L=new qx.ui.form.Button(ElggMan_sms_confirm_start);
L.setWidth(110);
L.addListener(h,this.numberSend,this);
break;
case j:L=new qx.ui.basic.Atom(H+ElggMan_sms_confirm_helpCodeH+C+ElggMan_sms_confirm_helpCode,o);
L.getChildControl(I).set({rich:true,wrap:true});
L.setEnabled(false);
this.add(L);
break;
case k:L=new qx.ui.container.Composite(new qx.ui.layout.HBox(10));
L.add(this.getChildControl(i));
L.add(this.getChildControl(z));
L.setEnabled(false);
this.add(L);
break;
case i:L=new qx.ui.form.TextField();
L.setWidth(180);
break;
case z:L=new qx.ui.form.Button(ElggMan_sms_confirm_verify);
L.setWidth(110);
L.addListener(h,this.verifySend,this);
break;
case G:L=new qx.ui.basic.Atom(f,u);
break;
case E:L=new qx.ui.container.Composite(new qx.ui.layout.HBox(10));
L.add(this.getChildControl(F));
L.add(this.getChildControl(g));
L.add(this.getChildControl(B));
this.add(L);
break;
case F:L=new qx.ui.form.Button(ElggMan_sms_sender_ready,m);
L.setEnabled(false);
L.addListener(h,this.ready,this);
break;
case g:L=new qx.ui.form.Button(ElggMan_sms_sender_restart,y);
L.setEnabled(false);
L.addListener(h,this.restart,this);
break;
case B:L=new qx.ui.form.Button(ElggMan_cancel,n);
L.addListener(h,this.cancel,this);
break;
}return L||westorelggman.elements.Window.prototype._createChildControlImpl.call(this,K);
},numberSend:function(){var M={action:D,number:this.getChildControl(c).getValue()};
this._serverCall(a,M);
},verifySend:function(){var N={action:q,code:this.getChildControl(i).getValue()};
this._serverCall(a,N);
},cancel:function(){this.close();
},restart:function(){this.getChildControl(i).setValue(f);
this.getChildControl(c).setValue(f);
this.getChildControl(b).setEnabled(true);
this.getChildControl(d).setEnabled(true);
this.getChildControl(j).setEnabled(false);
this.getChildControl(k).setEnabled(false);
this.getChildControl(g).setEnabled(false);
},ready:function(){this.close();
},getData:function(){var O={action:p};
this._serverCall(a,O);
},_onAppear:function(){this.__bX();
this.getData();
},__bX:function(){this.getChildControl(i).setValue(f);
this.getChildControl(c).setValue(f);
},_onServerAnswer:function(e){westorelggman.elements.Window.prototype._onServerAnswer.call(this);
var P=e.getData();

if(P.method==a){switch(P.action){case D:if(P.success){this.getChildControl(b).setEnabled(false);
this.getChildControl(d).setEnabled(false);
this.getChildControl(j).setEnabled(true);
this.getChildControl(k).setEnabled(true);
this.getChildControl(g).setEnabled(true);
}break;
case q:if(P.success){this.getChildControl(j).setEnabled(false);
this.getChildControl(k).setEnabled(false);
this.getChildControl(F).setEnabled(true);
}break;
case p:if(P.CodeSubmitted&&!P.NumberVeryfied){this.getChildControl(b).setEnabled(false);
this.getChildControl(d).setEnabled(false);
this.getChildControl(j).setEnabled(true);
this.getChildControl(k).setEnabled(true);
this.getChildControl(g).setEnabled(true);
}break;
}
if(P.info)this.getChildControl(G).getChildControl(I).setValue(P.info);

if(P.txt){elggmanMainContainer.alert(P.txt);
}}}},destruct:function(){}});
})();
(function(){var f="mshtml",e="engine.name",d="pop.push.reverse.shift.sort.splice.unshift.join.slice",c="number",b="qx.type.BaseArray",a=".";
qx.Class.define(b,{extend:Array,construct:function(g){},members:{toArray:null,valueOf:null,pop:null,push:null,reverse:null,shift:null,sort:null,splice:null,unshift:null,concat:null,join:null,slice:null,toString:null,indexOf:null,lastIndexOf:null,forEach:null,filter:null,map:null,some:null,every:null}});
(function(){function k(l){if((qx.core.Environment.get(e)==f)){j.prototype={length:0,$$isArray:true};
var o=d.split(a);

for(var length=o.length;length;){j.prototype[o[--length]]=Array.prototype[o[length]];
}}var p=Array.prototype.slice;
j.prototype.concat=function(){var r=this.slice(0);

for(var i=0,length=arguments.length;i<length;i++){var q;

if(arguments[i] instanceof j){q=p.call(arguments[i],0);
}else if(arguments[i] instanceof Array){q=arguments[i];
}else{q=[arguments[i]];
}r.push.apply(r,q);
}return r;
};
j.prototype.toString=function(){return p.call(this,0).toString();
};
j.prototype.toLocaleString=function(){return p.call(this,0).toLocaleString();
};
j.prototype.constructor=j;
j.prototype.indexOf=qx.lang.Core.arrayIndexOf;
j.prototype.lastIndexOf=qx.lang.Core.arrayLastIndexOf;
j.prototype.forEach=qx.lang.Core.arrayForEach;
j.prototype.some=qx.lang.Core.arraySome;
j.prototype.every=qx.lang.Core.arrayEvery;
var m=qx.lang.Core.arrayFilter;
var n=qx.lang.Core.arrayMap;
j.prototype.filter=function(){var s=new this.constructor;
s.push.apply(s,m.apply(this,arguments));
return s;
};
j.prototype.map=function(){var t=new this.constructor;
t.push.apply(t,n.apply(this,arguments));
return t;
};
j.prototype.slice=function(){var u=new this.constructor;
u.push.apply(u,Array.prototype.slice.apply(this,arguments));
return u;
};
j.prototype.splice=function(){var v=new this.constructor;
v.push.apply(v,Array.prototype.splice.apply(this,arguments));
return v;
};
j.prototype.toArray=function(){return Array.prototype.slice.call(this,0);
};
j.prototype.valueOf=function(){return this.length;
};
return j;
}function j(length){if(arguments.length===1&&typeof length===c){this.length=-1<length&&length===length>>.5?length:this.push(length);
}else if(arguments.length){this.push.apply(this,arguments);
}}function h(){}h.prototype=[];
j.prototype=new h;
j.prototype.length=0;
qx.type.BaseArray=k(j);
})();
})();
(function(){var m="get",k="set",h="reset",g=":not(",f="getValue",e="append",d=")",c="getPreviousSiblings",b="getOffsetParent",a="qx.bom.Collection",K="setValue",J="prepend",I="string",H="getAncestors",G="#",F="remove",E=">*",D="add",C="*",B="",t="addListener",u="has",r="toggle",s="getSiblings",p="replace",q="after",n="replaceWith",o="setCss",v="setStyles",w="before",y="getNextSiblings",x="getPosition",A="getCss",z="removeListener";
(function(){var M=function(N,O){return function(P,Q,R,S,T,U){var length=this.length;

if(length>0){var V=N[O];

for(var i=0;i<length;i++){if(this[i].nodeType===1){V.call(N,this[i],P,Q,R,S,T,U);
}}}return this;
};
};
var L=function(W,X){return function(Y,ba,bb,bc,bd,be){if(this.length>0){var bf=this[0].nodeType===1?W[X](this[0],Y,ba,bb,bc,bd,be):null;

if(bf&&bf.nodeType){return this.__cs([bf]);
}else{return bf;
}}return null;
};
};
qx.Class.define(a,{extend:qx.type.BaseArray,construct:function(bg){qx.type.BaseArray.apply(this,arguments);
},statics:{query:function(bh,bi){var bj=qx.bom.Selector.query(bh,bi);
return qx.lang.Array.cast(bj,qx.bom.Collection);
},id:function(bk){var bl=document.getElementById(bk);
if(bl&&bl.id!=bk){return qx.bom.Collection.query(G+bk);
}if(bl){return new qx.bom.Collection(bl);
}else{return new qx.bom.Collection();
}},html:function(bm,bn){var bo=qx.bom.Html.clean([bm],bn);
return qx.lang.Array.cast(bo,qx.bom.Collection);
},__co:/^[^<]*(<(.|\s)+>)[^>]*$|^#([\w-]+)$/,create:function(bp,bq){var bs=qx.bom.Collection;
if(bp.nodeType){return new bs(bp);
}else if(typeof bp===I){var br=bs.__co.exec(bp);

if(br){return br[1]?bs.html(br[1],bq):bs.id(br[3].substring(1));
}else{return bs.query(bp,bq);
}}else{return qx.lang.Array.cast(bp,qx.bom.Collection);
}}},members:{__cp:null,setAttribute:M(qx.bom.element.Attribute,k),resetAttribute:M(qx.bom.element.Attribute,h),getAttribute:L(qx.bom.element.Attribute,m),addClass:M(qx.bom.element.Class,D),getClass:L(qx.bom.element.Class,m),hasClass:L(qx.bom.element.Class,u),removeClass:M(qx.bom.element.Class,F),replaceClass:M(qx.bom.element.Class,p),toggleClass:M(qx.bom.element.Class,r),setValue:M(qx.bom.Input,K),getValue:L(qx.bom.Input,f),setStyle:M(qx.bom.element.Style,k),setStyles:M(qx.bom.element.Style,v),resetStyle:M(qx.bom.element.Style,h),getStyle:L(qx.bom.element.Style,m),setCss:M(qx.bom.element.Style,o),getCss:M(qx.bom.element.Style,A),getOffset:L(qx.bom.element.Location,m),getPosition:L(qx.bom.element.Location,x),getOffsetParent:L(qx.bom.element.Location,b),setScrollLeft:function(bt){var Node=qx.dom.Node;

for(var i=0,l=this.length,bu;i<l;i++){bu=this[i];

if(Node.isElement(bu)){bu.scrollLeft=bt;
}else if(Node.isWindow(bu)){bu.scrollTo(bt,this.getScrollTop(bu));
}else if(Node.isDocument(bu)){Node.getWindow(bu).scrollTo(bt,this.getScrollTop(bu));
}}return this;
},setScrollTop:function(bv){var Node=qx.dom.Node;

for(var i=0,l=this.length,bw;i<l;i++){bw=this[i];

if(Node.isElement(bw)){bw.scrollTop=bv;
}else if(Node.isWindow(bw)){bw.scrollTo(this.getScrollLeft(bw),bv);
}else if(Node.isDocument(bw)){Node.getWindow(bw).scrollTo(this.getScrollLeft(bw),bv);
}}return this;
},getScrollLeft:function(){var bx=this[0];

if(!bx){return null;
}var Node=qx.dom.Node;

if(Node.isWindow(bx)||Node.isDocument(bx)){return qx.bom.Viewport.getScrollLeft();
}return bx.scrollLeft;
},getScrollTop:function(){var by=this[0];

if(!by){return null;
}var Node=qx.dom.Node;

if(Node.isWindow(by)||Node.isDocument(by)){return qx.bom.Viewport.getScrollTop();
}return by.scrollTop;
},getWidth:function(){var bz=this[0];
var Node=qx.dom.Node;

if(bz){if(Node.isElement(bz)){return qx.bom.element.Dimension.getWidth(bz);
}else if(Node.isDocument(bz)){return qx.bom.Document.getWidth(Node.getWindow(bz));
}else if(Node.isWindow(bz)){return qx.bom.Viewport.getWidth(bz);
}}return null;
},getContentWidth:function(){var bA=this[0];

if(qx.dom.Node.isElement(bA)){return qx.bom.element.Dimension.getContentWidth(bA);
}return null;
},getHeight:function(){var bB=this[0];
var Node=qx.dom.Node;

if(bB){if(Node.isElement(bB)){return qx.bom.element.Dimension.getHeight(bB);
}else if(Node.isDocument(bB)){return qx.bom.Document.getHeight(Node.getWindow(bB));
}else if(Node.isWindow(bB)){return qx.bom.Viewport.getHeight(bB);
}}return null;
},getContentHeight:function(){var bC=this[0];

if(qx.dom.Node.isElement(bC)){return qx.bom.element.Dimension.getContentHeight(bC);
}return null;
},addListener:M(qx.bom.Element,t),removeListener:M(qx.bom.Element,z),eq:function(bD){return this.slice(bD,+bD+1);
},filter:function(bE,bF){var bG;

if(qx.lang.Type.isFunction(bE)){bG=qx.type.BaseArray.prototype.filter.call(this,bE,bF);
}else{bG=qx.bom.Selector.matches(bE,this);
}return this.__cs(bG);
},is:function(bH){return !!bH&&qx.bom.Selector.matches(bH,this).length>0;
},__cq:/^.[^:#\[\.,]*$/,not:function(bI){if(this.__cq.test(bI)){var bJ=qx.bom.Selector.matches(g+bI+d,this);
return this.__cs(bJ);
}var bJ=qx.bom.Selector.matches(bI,this);
return this.filter(function(bK){return bJ.indexOf(bK)===-1;
});
},add:function(bL,bM){var bN=qx.bom.Selector.query(bL,bM);
var bO=qx.lang.Array.unique(this.concat(bN));
return this.__cs(bO);
},children:function(bP){var bQ=[];

for(var i=0,l=this.length;i<l;i++){bQ.push.apply(bQ,qx.dom.Hierarchy.getChildElements(this[i]));
}
if(bP){bQ=qx.bom.Selector.matches(bP,bQ);
}return this.__cs(bQ);
},closest:function(bR){var bS=new qx.bom.Collection(1);
var bU=qx.bom.Selector;
var bT=this.map(function(bV){while(bV&&bV.ownerDocument){bS[0]=bV;

if(bU.matches(bR,bS).length>0){return bV;
}bV=bV.parentNode;
}});
return this.__cs(qx.lang.Array.unique(bT));
},contents:function(){var bX=[];
var bW=qx.lang.Array;

for(var i=0,l=this.length;i<l;i++){bX.push.apply(bX,bW.fromCollection(this[i].childNodes));
}return this.__cs(bX);
},find:function(bY){var cb=qx.bom.Selector;
if(this.length===1){return this.__cs(cb.query(bY,this[0]));
}else{var ca=[];

for(var i=0,l=this.length;i<l;i++){ca.push.apply(ca,cb.query(bY,this[i]));
}return this.__cs(qx.lang.Array.unique(ca));
}},next:function(cc){var cd=qx.dom.Hierarchy;
var ce=this.map(cd.getNextElementSibling,cd);
if(cc){ce=qx.bom.Selector.matches(cc,ce);
}return this.__cs(ce);
},nextAll:function(cf){return this.__cr(y,cf);
},prev:function(cg){var ch=qx.dom.Hierarchy;
var ci=this.map(ch.getPreviousElementSibling,ch);
if(cg){ci=qx.bom.Selector.matches(cg,ci);
}return this.__cs(ci);
},prevAll:function(cj){return this.__cr(c,cj);
},parent:function(ck){var Element=qx.dom.Element;
var cl=qx.lang.Array.unique(this.map(Element.getParentElement,Element));
if(ck){cl=qx.bom.Selector.matches(ck,cl);
}return this.__cs(cl);
},parents:function(cm){return this.__cr(H,cm);
},siblings:function(cn){return this.__cr(s,cn);
},__cr:function(co,cp){var cr=[];
var cq=qx.dom.Hierarchy;

for(var i=0,l=this.length;i<l;i++){cr.push.apply(cr,cq[co](this[i]));
}var cs=qx.lang.Array.unique(cr);
if(cp){cs=qx.bom.Selector.matches(cp,cs);
}return this.__cs(cs);
},__cs:function(ct){var cu=new qx.bom.Collection;
cu.__cp=this;
ct=Array.prototype.slice.call(ct,0);
cu.push.apply(cu,ct);
return cu;
},andSelf:function(){return this.add(this.__cp);
},end:function(){return this.__cp||new qx.bom.Collection();
},__ct:function(cv,cw){var cB=this[0];
var cA=cB.ownerDocument||cB;
var cz=cA.createDocumentFragment();
var cD=qx.bom.Html.clean(cv,cA,cz);
var cF=cz.firstChild;
if(cF){var cx=this.length-1;

for(var i=0,l=cx;i<l;i++){cw.call(this,this[i],cz.cloneNode(true));
}cw.call(this,this[cx],cz);
}if(cD){var cy;
var cE=qx.io.ScriptLoader;
var cC=qx.lang.Function;

for(var i=0,l=cD.length;i<l;i++){cy=cD[i];
if(cy.src){(new cE()).load(cy.src);
}else{cC.globalEval(cy.text||cy.textContent||cy.innerHTML||B);
}if(cy.parentNode){cy.parentNode.removeChild(cy);
}}}return this;
},__cu:function(cG,cH){var cJ=qx.bom.Selector;
var cI=qx.lang.Array;
var cL=[];

for(var i=0,l=cG.length;i<l;i++){cL.push.apply(cL,cJ.query(cG[i]));
}cL=cI.cast(cI.unique(cL),qx.bom.Collection);
for(var i=0,cK=this.length;i<cK;i++){cL[cH](this[i]);
}return this;
},append:function(cM){return this.__ct(arguments,this.__cv);
},prepend:function(cN){return this.__ct(arguments,this.__cw);
},__cv:function(cO,cP){cO.appendChild(cP);
},__cw:function(cQ,cR){cQ.insertBefore(cR,cQ.firstChild);
},appendTo:function(cS){return this.__cu(arguments,e);
},prependTo:function(cT){return this.__cu(arguments,J);
},before:function(cU){return this.__ct(arguments,this.__cx);
},after:function(cV){return this.__ct(arguments,this.__cy);
},__cx:function(cW,cX){cW.parentNode.insertBefore(cX,cW);
},__cy:function(cY,da){cY.parentNode.insertBefore(da,cY.nextSibling);
},insertBefore:function(db){return this.__cu(arguments,w);
},insertAfter:function(dc){return this.__cu(arguments,q);
},wrapAll:function(content){var de=this[0];

if(de){var dd=qx.bom.Collection.create(content,de.ownerDocument).clone();
if(de.parentNode){de.parentNode.insertBefore(dd[0],de);
}dd.map(this.__cz).append(this);
}return this;
},__cz:function(df){while(df.firstChild){df=df.firstChild;
}return df;
},wrapInner:function(content){var dg=new qx.bom.Collection(1);

for(var i=0,l=this.length;i<l;i++){dg[0]=this[i];
dg.contents().wrapAll(content);
}return this;
},wrap:function(content){var dh=new qx.bom.Collection(1);
for(var i=0,l=this.length;i<l;i++){dh[0]=this[i];
dh.wrapAll(content);
}return this;
},replaceWith:function(content){return this.after(content).remove();
},replaceAll:function(di){return this.__cu(arguments,n);
},remove:function(dj){var dl=this;

if(dj){dl=this.filter(dj);

if(dl.length==0){return this;
}}for(var i=0,dm=dl.length,dk;i<dm;i++){dk=dl[i];

if(dk.parentNode){dk.parentNode.removeChild(dk);
}}return dl;
},destroy:function(dn){if(this.length==0){return this;
}var dq=qx.bom.Selector;
var dt=this;

if(dn){dt=this.filter(dn);

if(dt.length==0){return this;
}}var ds=qx.event.Registration.getManager(this[0]);

for(var i=0,l=dt.length,dr,du;i<l;i++){dr=dt[i];
ds.removeAllListeners(dr);
du=dq.query(C,dr);

for(var j=0,dp=du.length;j<dp;j++){ds.removeAllListeners(du[j]);
}if(dr.parentNode){dr.parentNode.removeChild(dr);
}}if(dn){dt.end();
qx.lang.Array.exclude(this,dt);
}else{this.length=0;
}return this;
},empty:function(){var dv=qx.bom.Collection;

for(var i=0,l=this.length;i<l;i++){dv.query(E,this[i]).destroy();
while(this.firstChild){this.removeChild(this.firstChild);
}}return this;
},clone:function(dw){var Element=qx.bom.Element;
return dw?this.map(function(dx){return Element.clone(dx,true);
}):this.map(Element.clone,Element);
}},defer:function(dy){if(window.$==null){window.$=dy.create;
}}});
})();
})();
(function(){var m="string",k="script",h="<table>",g="engine.name",f="<fieldset>",e="<select multiple='multiple'>",d="</div>",c="</select>",b="</tr></tbody></table>",a="<col",J="div",I="<table><tbody><tr>",H=">",G="<table><tbody></tbody><colgroup>",F="<th",E="</tbody></table>",D="<td",C="</colgroup></table>",B="<opt",A="text/javascript",t="",u="</fieldset>",r="<table><tbody>",s="div<div>",p="<table",q="mshtml",n="qx.bom.Html",o="<leg",v="tbody",w="<tr",y="</table>",x="undefined",z="></";
qx.Class.define(n,{statics:{__bT:function(K,L,M){return M.match(/^(abbr|br|col|img|input|link|meta|param|hr|area|embed)$/i)?K:L+z+M+H;
},__bU:{opt:[1,e,c],leg:[1,f,u],table:[1,h,y],tr:[2,r,E],td:[3,I,b],col:[2,G,C],def:qx.core.Environment.select(g,{"mshtml":[1,s,d],"default":null})},__bV:function(N,O){var U=O.createElement(J);
N=N.replace(/(<(\w+)[^>]*?)\/>/g,this.__bT);
var Q=N.replace(/^\s+/,t).substring(0,5).toLowerCase();
var T,P=this.__bU;

if(!Q.indexOf(B)){T=P.opt;
}else if(!Q.indexOf(o)){T=P.leg;
}else if(Q.match(/^<(thead|tbody|tfoot|colg|cap)/)){T=P.table;
}else if(!Q.indexOf(w)){T=P.tr;
}else if(!Q.indexOf(D)||!Q.indexOf(F)){T=P.td;
}else if(!Q.indexOf(a)){T=P.col;
}else{T=P.def;
}if(T){U.innerHTML=T[1]+N+T[2];
var S=T[0];

while(S--){U=U.lastChild;
}}else{U.innerHTML=N;
}if((qx.core.Environment.get(g)==q)){var V=/<tbody/i.test(N);
var R=!Q.indexOf(p)&&!V?U.firstChild&&U.firstChild.childNodes:T[1]==h&&!V?U.childNodes:[];

for(var j=R.length-1;j>=0;--j){if(R[j].tagName.toLowerCase()===v&&!R[j].childNodes.length){R[j].parentNode.removeChild(R[j]);
}}if(/^\s/.test(N)){U.insertBefore(O.createTextNode(N.match(/^\s*/)[0]),U.firstChild);
}}return qx.lang.Array.fromCollection(U.childNodes);
},clean:function(W,X,Y){X=X||document;
if(typeof X.createElement===x){X=X.ownerDocument||X[0]&&X[0].ownerDocument||document;
}if(!Y&&W.length===1&&typeof W[0]===m){var bg=/^<(\w+)\s*\/?>$/.exec(W[0]);

if(bg){return [X.createElement(bg[1])];
}}var ba,bc=[];

for(var i=0,l=W.length;i<l;i++){ba=W[i];
if(typeof ba===m){ba=this.__bV(ba,X);
}if(ba.nodeType){bc.push(ba);
}else if(ba instanceof qx.type.BaseArray){bc.push.apply(bc,Array.prototype.slice.call(ba,0));
}else if(ba.toElement){bc.push(ba.toElement());
}else{bc.push.apply(bc,ba);
}}if(Y){var bf=[],be=qx.lang.Array,bd,bb;

for(var i=0;bc[i];i++){bd=bc[i];

if(bd.nodeType==1&&bd.tagName.toLowerCase()===k&&(!bd.type||bd.type.toLowerCase()===A)){if(bd.parentNode){bd.parentNode.removeChild(bc[i]);
}bf.push(bd);
}else{if(bd.nodeType===1){bb=be.fromCollection(bd.getElementsByTagName(k));
bc.splice.apply(bc,[i+1,0].concat(bb));
}Y.appendChild(bd);
}}return bf;
}return bc;
}}});
})();
(function(){var l="execute",k="recipients",j="sendNow",h="input",g="",f="schedule",d=" ",c="excluded",b="helpArea",a="checkMobileNumbers",ba="charCount",Y="scrollContainer",X="infoLine",W="buttonLine",V="sendSMS",U="addUser",T="activity",S="header",R="headbox",Q="cancel",t="recipientsHBox",u="container",q=", ",r="toolbar",o="accountBalance",p=".",m="<strong>",n="westorelggman/dialog-cancel.png",w="contactInserted",x="indicator_waitanim",E="westorelggman/mobil.png",C="SMS-HQ",I="westorelggman/edit-find.png",G="</strong>.<br>",M='hidden',K="sms-window",z="__recipients",P="__bY",O="westorelggman/preferences-users-48p.png",N="westorelggman/alarm.png",y="right",A="keyup",B="westorelggman/sms-mobil.png",D="westorelggman.Sms",F="label",H="rpc",J="westorelggman/dialog-apply.png",L="close",v="westorelggman/system.png";
qx.Class.define(D,{extend:westorelggman.elements.Window,construct:function(){westorelggman.elements.Window.call(this);
this.setLayout(new qx.ui.layout.VBox(20));
elggmanMainContainer.contactWindow.addListener(w,function(e){var bb=this.getRecipients();
bb.push(e.getData());
this.setRecipients(bb);
this.checkMobileNumbers();
},this);
this.__bW();
},properties:{appearance:{refine:true,init:K},recipients:{nullable:true,init:[]}},members:{rpc:null,__bY:null,__bW:function(){this.getChildControl(r);
this.getChildControl(u);
},_createChildControlImpl:function(bc){var bd;

switch(bc){case r:bd=new qx.ui.toolbar.ToolBar();
var be=new qx.ui.toolbar.Button(ElggMan_sms_confirm,J);
be.addListener(l,this.__cc,this);
var bg=new qx.ui.toolbar.Button(ElggMan_sms_history,I);
bg.addListener(l,this.__cd,this);
var bf=new qx.ui.toolbar.Button(ElggMan_sms_balance,v);
bf.addListener(l,this.__ce,this);
bf.setEnabled(false);
bd.add(be);
bd.add(bg);
bd.add(new qx.ui.toolbar.Separator());
bd.add(bf);
this.add(bd);
break;
case R:bd=new qx.ui.container.Composite(new qx.ui.layout.HBox(10));
bd.setAllowGrowX(true);
bd.add(this.getChildControl(S),{flex:1});
bd.add(this.getChildControl(T));
break;
case u:bd=new qx.ui.container.Composite(new qx.ui.layout.VBox(10));
bd.add(this.getChildControl(R));
bd.add(this.getChildControl(t));
bd.add(this.getChildControl(h));
bd.add(this.getChildControl(X));
bd.add(this.getChildControl(b));
bd.add(this.getChildControl(W));
this.add(bd);
break;
case T:bd=new qx.ui.basic.Image();
bd.setAppearance(x);
bd.setAlignX(y);
bd.setVisibility(M);
break;
case S:bd=new qx.ui.basic.Atom(m+ElggMan_sms_label+G+ElggMan_sms_label_descr,E);
bd.getChildControl(F).setRich(true);
break;
case t:bd=new qx.ui.container.Composite(new qx.ui.layout.HBox(10));
bd.add(this.getChildControl(Y),{flex:1});
bd.add(this.getChildControl(U));
break;
case Y:bd=new qx.ui.container.Scroll();
bd.setHeight(32);
bd.add(this.getChildControl(k));
break;
case k:bd=new qx.ui.basic.Label();
bd.set({rich:true,wrap:true});
break;
case U:bd=new qx.ui.toolbar.Button(null,O);
bd.addListener(l,this.__ca,this);
break;
case h:bd=new qx.ui.form.TextArea();
bd.addListener(A,this.__cb,this);
break;
case X:bd=new qx.ui.container.Composite(new qx.ui.layout.HBox());
bd.add(this.getChildControl(ba));
bd.add(this.getChildControl(o));
break;
case ba:bd=new qx.ui.basic.Label(0+d+ElggMan_sms_char+q+0+d+ElggMan_sms+p);
break;
case o:bd=new qx.ui.basic.Label();
break;
case b:bd=new qx.ui.basic.Label();
bd.setRich(true);
bd.setWrap(false);
break;
case W:bd=new qx.ui.container.Composite(new qx.ui.layout.HBox(10));
bd.add(this.getChildControl(j));
bd.add(this.getChildControl(Q));
break;
case j:bd=new qx.ui.form.Button(ElggMan_sms_sendnow,B);
bd.addListener(l,this.sendNow,this);
break;
case f:bd=new qx.ui.form.Button(ElggMan_sms_schedule,N);
bd.addListener(l,this.schedule,this);
break;
case Q:bd=new qx.ui.form.Button(ElggMan_cancel,n);
bd.addListener(l,this.cancel,this);
break;
}return bd||westorelggman.elements.Window.prototype._createChildControlImpl.call(this,bc);
},sendNow:function(){var bi=C;
var bh={};
bh.recipients=this.getRecipients();
bh.message=this.getChildControl(h).getValue();
bh.action=g;
this._serverCall(V,bh);
},schedule:function(){elggmanMainContainer.alert("Sorry, this is not supported in demo version.");
},cancel:function(){this.close();
},updateAccountBalance:function(){},checkMobileNumbers:function(){var bk=this.getRecipients();
var bj={};

if(bk.length){bj.recipients=bk;
bj.action=g;
this._serverCall(a,bj);
}else{this._serverCall(a,bj);
this.getChildControl(k).setValue(ElggMan_sms_enternumber);
}},__ca:function(){elggmanMainContainer.contactWindow.open();
},__cb:function(){var bl=this.getChildControl(h).getValue().length;
var i=bl/160;

if(i>1)i=bl/153;
var bm=Math.floor(i);

if(bm!=i)bm++;
var s=bl+d+((bl==1)?ElggMan_sms_char:ElggMan_sms_chars)+q+bm+d+ElggMan_sms+p;
this.getChildControl(ba).setValue(s);
},_onAppear:function(){this.__bX();
this.updateAccountBalance();
this.checkMobileNumbers();
},__bX:function(){this.getChildControl(k).setValue(g);
},__cc:function(){if(!this.__bY){this.__bY=new westorelggman.SmsVerify(this);
this.__bY.addListener(L,this._onAppear,this);
}this.__bY.open();
},__cd:function(){elggmanMainContainer.historyWin.manager.setSelection([elggmanMainContainer.historyWin.sms]);
elggmanMainContainer.historyWin.outbox.setVisibility(c);
elggmanMainContainer.historyWin.inbox.setVisibility(c);
elggmanMainContainer.historyWin.sms.setVisibility(c);
elggmanMainContainer.historyWin.open();
},__ce:function(){},_onServerAnswer:function(e){westorelggman.elements.Window.prototype._onServerAnswer.call(this);
var bo=e.getData();

switch(bo.method){case a:if(bo.rcp_name){this.getChildControl(k).setValue(bo.rcp_name);
}
if(bo.rcp_guids){this.setRecipients(bo.rcp_guids);
}
if(bo.txt){elggmanMainContainer.alert(bo.txt);
}var bn;

if(bo.verified==false){this.getChildControl(j).setEnabled(false);
this.getChildControl(f).setEnabled(false);
bn=ElggMan_sms_confirm_helpHeaderH;
}else{if(bo.rcp_guids&&bo.rcp_guids.length){this.getChildControl(j).setEnabled(true);
this.getChildControl(f).setEnabled(true);
}else{this.getChildControl(j).setEnabled(false);
this.getChildControl(f).setEnabled(false);
}bn=bo.info?bo.info:g;
}this.getChildControl(b).setValue(bn);
break;
case V:if(bo.err){elggmanMainContainer.alert(bo.err);
}
if(bo.txt){elggmanMainContainer.alert(bo.txt);
this.close();
}break;
}}},destruct:function(){this._disposeObjects(H,z,P);
}});
})();
(function(){var k="auto",j="engine.name",i="hidden",h="overflowY",g="textarea",f="width",d="Boolean",c="Integer",b="input",a="appear",A="mshtml",z="webkit",y="px",x="_applyWrap",w="-1",v="_applyMinimalLineHeight",u="mousewheel",t="visible",s="y",r="browser.documentmode",p="_applyAutoSize",q="tabIndex",n='name',o="qx.ui.form.TextArea",l='id',m="absolute";
qx.Class.define(o,{extend:qx.ui.form.AbstractField,construct:function(B){qx.ui.form.AbstractField.call(this,B);
this.initWrap();
this.addListener(u,this._onMousewheel,this);
},properties:{wrap:{check:d,init:true,apply:x},appearance:{refine:true,init:g},singleStep:{check:c,init:20},minimalLineHeight:{check:c,apply:v,init:4},autoSize:{check:d,apply:p,init:false}},members:{__cf:null,__cg:null,__ch:null,setValue:function(C){C=qx.ui.form.AbstractField.prototype.setValue.call(this,C);
this.__ci();
return C;
},_onMousewheel:function(e){var D=this.getContentElement();
var scrollY=D.getScrollY();
D.scrollToY(scrollY+e.getWheelDelta(s)*this.getSingleStep());
var E=D.getScrollY();

if(E!=scrollY){e.stop();
}},__ci:function(){if(this.isAutoSize()){var H=this.__cj();

if(H){this.__ch=this.__ch||this._getAreaHeight();
var J=this._getScrolledAreaHeight();
if(this.getMaxHeight()){var F=this.getInsets();
var G=-F.top+this.getMaxHeight()-F.bottom;

if(J>G){this.getContentElement().setStyle(h,k);
}else{this.getContentElement().setStyle(h,i);
}}var I=Math.max(J,this.__ch);
this._setAreaHeight(I);
}else{this.addListenerOnce(a,function(){this.__ci();
},this);
}}},_getAreaHeight:function(){return this.getInnerSize().height;
},_setAreaHeight:function(K){if(this._getAreaHeight()!==K){this.__cg=K;
qx.ui.core.queue.Layout.add(this);
qx.ui.core.queue.Manager.flush();
this.__cm();
}},_getScrolledAreaHeight:function(){var M=this.__cj();
var L=M.getDomElement();

if(L){if(!L.parentNode){qx.html.Element.flush();
return this._getScrolledAreaHeight();
}if(qx.core.Environment.get(j)===z){M.setWrap(!this.getWrap(),true);
}M.setWrap(this.getWrap(),true);
if(qx.core.Environment.get(j)==z){L.style.overflow=i;
}if(qx.core.Environment.get(j)==A&&qx.core.Environment.get(r)>=8){L.style.overflow=t;
}M.setValue(this.getValue());
this.__cl(M);

if(qx.core.Environment.get(j)==A){if(!L.scrollTop){qx.html.Element.flush();
}return L.scrollTop+this._getTextSize().height;
}return L.scrollTop;
}},__cj:function(){this.__cf=this.__cf||this.__ck();
return this.__cf;
},__ck:function(){var Q,O,N,P;
Q=this.getContentElement();
if(!Q.getDomElement()){return;
}N=qx.bom.Collection.create(Q.getDomElement()).clone()[0];
P=new qx.html.Input(g);
P.useElement(N);
O=P;
O.setStyles({position:m,top:0,left:-9999,height:0,overflow:i},true);
O.removeAttribute(l);
O.removeAttribute(n);
O.setAttribute(q,w);
O.setValue(Q.getValue());
O.insertBefore(Q);
this.__cl(O);
return O;
},__cl:function(R){R=R.getDomElement();

if(R){R.scrollTop=10000;
}},_createInputElement:function(){return new qx.html.Input(g,{overflowX:k,overflowY:k});
},_applyWrap:function(S,T){this.getContentElement().setWrap(S);
this.__ci();
},_applyMinimalLineHeight:function(){qx.ui.core.queue.Layout.add(this);
},_applyAutoSize:function(U,V){if(U){this.__ci();
this.addListener(b,this.__ci,this);
this.addListenerOnce(a,function(){this.getContentElement().setStyle(h,i);
});
}else{this.removeListener(b,this.__ci);
this.getContentElement().setStyle(h,k);
}},_applyDimension:function(W){qx.ui.form.AbstractField.prototype._applyDimension.call(this);

if(W===this.getMaxHeight()){this.__ci();
}},__cm:function(){var content=this.getContentElement();
var Y=content.getDomElement();
var X=content.getStyle(f);
content.setStyle(f,parseInt(X,10)+1000+y,true);
if(Y){qx.bom.element.Dimension.getWidth(Y);
}content.setStyle(f,X,true);
},__cn:function(){if(this.isAutoSize()&&this.getHeight()){this.warn("autoSize is ignored when the height property is set. "+"If you want to set an initial height, use the minHeight "+"property instead.");
}},_getContentHint:function(){var ba=qx.ui.form.AbstractField.prototype._getContentHint.call(this);
ba.height=ba.height*this.getMinimalLineHeight();
ba.width=this._getTextSize().width*20;

if(this.isAutoSize()){ba.height=this.__cg||ba.height;
}return ba;
}}});
})();

});