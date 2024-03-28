'use client';
import React from 'react';
import Link from 'next/link';
import { useSession } from 'next-auth/react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faXTwitter, faGithub } from '@fortawesome/free-brands-svg-icons';

const Footer = () => {
  const { data: session } = useSession();

  return (
    <div className="bg-custom-color text-text-color font-genjyuu w-full shadow-top-shadow">
      <footer className={`flex ${session ? 'justify-center' : 'flex-col items-center justify-center'} pb-6 pt-6`}>
        {!session && (
          <>
            <ul className="flex justify-center mb-2">
              <li className="p-2 cursor-pointer">
                <Link href="/term_of_service">利用規約</Link>
              </li>
              <li className="p-2 cursor-pointer">
                <Link href="/privacy_policy">プライバシーポリシー</Link>
              </li>
              <li className="p-2 cursor-pointer">
                <Link href="https://twitter.com/__rk2530" target="_blank" rel="noopener noreferrer">お問い合わせ</Link>
              </li>
            </ul>
            <ul className="flex justify-center">
              <li className="cursor-pointer pb-4 pr-6">
                <Link href="https://twitter.com/__rk2530" target="_blank" rel="noopener noreferrer">
                  <FontAwesomeIcon icon={faXTwitter} style={{ width: '22px', height: '22px' }} />
                </Link>
              </li>
              <li className="cursor-pointer pb-4">
                <Link href="https://github.com/rk0325/korecare" target="_blank" rel="noopener noreferrer">
                  <FontAwesomeIcon icon={faGithub} style={{ width: '22px', height: '22px' }} />
                </Link>
              </li>
            </ul>
            <p className="text-sm">© 2024 KoreCare</p>
          </>
        )}
        {session && (
          <div className='flex flex-col items-center justify-center'>
            <ul className="flex justify-center pb-2">
              <li className="cursor-pointer pr-6">
                <Link href="https://twitter.com/__rk2530" target="_blank" rel="noopener noreferrer">
                  <FontAwesomeIcon icon={faXTwitter} style={{ width: '22px', height: '22px' }} />
                </Link>
              </li>
              <li className="cursor-pointer">
                <Link href="https://github.com/rk0325/korecare" target="_blank" rel="noopener noreferrer">
                  <FontAwesomeIcon icon={faGithub} style={{ width: '22px', height: '22px' }} />
                </Link>
              </li>
            </ul>
            <p className="text-sm">© 2024 KoreCare</p>
          </div>
        )}
      </footer>
    </div>
  );
}

export default Footer;